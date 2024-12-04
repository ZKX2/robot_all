#!/usr/bin/env python3

'''
This script makes Gazebo less fail by translating gazebo status messages to odometry data.
Since Gazebo also publishes data faster than normal odom data, this script caps the update to 20hz.
Winter Guerra
'''

import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Pose, Twist, Transform, TransformStamped
from gazebo_msgs.msg import LinkStates
from std_msgs.msg import Header
import numpy as np
import math
import tf2_ros
from tf.transformations import quaternion_multiply, quaternion_from_euler

def normalize_quaternion(q):
    norm = math.sqrt(q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w)
    if norm > 0:
        q.x /= norm
        q.y /= norm
        q.z /= norm
        q.w /= norm
    else:
        # 如果归一化失败（例如四元数全为零），给出一个默认值
        q.x = 0.0
        q.y = 0.0
        q.z = 0.0
        q.w = 1.0
    return q

class OdometryNode:
    # Set publishers
    pub_odom = rospy.Publisher('/odom', Odometry, queue_size=1)

    def __init__(self):
        # init internals
        self.last_received_pose = Pose()
        self.last_received_twist = Twist()
        self.last_received_stamp = None

        # Set the update rate
        rospy.Timer(rospy.Duration(.05), self.timer_callback) # 20hz

        self.tf_pub = tf2_ros.TransformBroadcaster()

        # Set subscribers
        rospy.Subscriber('/gazebo/link_states', LinkStates, self.sub_robot_pose_update)

    def sub_robot_pose_update(self, msg):
        # Find the index of the racecar
        try:
            arrayIndex = msg.name.index('wheeltec_robot::base_footprint')
        except ValueError as e:
            # Wait for Gazebo to startup
            pass
        else:
            # Extract our current position information
            self.last_received_pose = msg.pose[arrayIndex]
            self.last_received_twist = msg.twist[arrayIndex]
        self.last_received_stamp = rospy.Time.now()

    def timer_callback(self, event):
        if self.last_received_stamp is None:
            return

        cmd = Odometry()
        cmd.header.stamp = self.last_received_stamp
        cmd.header.frame_id = 'odom'
        cmd.child_frame_id = 'base_footprint'
        cmd.pose.pose = self.last_received_pose
        cmd.twist.twist = self.last_received_twist
        cmd.pose.covariance =[1e-3, 0, 0, 0, 0, 0,
						0, 1e-3, 0, 0, 0, 0,
						0, 0, 1e6, 0, 0, 0,
						0, 0, 0, 1e6, 0, 0,
						0, 0, 0, 0, 1e6, 0,
						0, 0, 0, 0, 0, 1e3]

        cmd.twist.covariance = [1e-9, 0, 0, 0, 0, 0, 
                          0, 1e-3, 1e-9, 0, 0, 0,
                          0, 0, 1e6, 0, 0, 0,
                          0, 0, 0, 1e6, 0, 0,
                          0, 0, 0, 0, 1e6, 0,
                          0, 0, 0, 0, 0, 1e-9]


        self.pub_odom.publish(cmd)

        tf = TransformStamped(
            header=Header(
                frame_id=cmd.header.frame_id,
                stamp=cmd.header.stamp
            ),
            child_frame_id=cmd.child_frame_id,
            
            transform=Transform(
                translation=cmd.pose.pose.position,
                rotation=normalize_quaternion(cmd.pose.pose.orientation)
            )
        )

        self.tf_pub.sendTransform(tf)

# Start the node
if __name__ == '__main__':
    rospy.init_node("gazebo_odometry_node")
    node = OdometryNode()
    rospy.spin()

