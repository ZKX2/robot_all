import rospy
import numpy as np
import cv2 # type: ignore
from geometry_msgs.msg import Twist,TwistStamped
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from geometry_msgs.msg import PoseStamped
import math
from turn_on_wheeltec_robot.srv import C_pose,C_poseResponse,C_poseRequest
RED = '\033[91m'
PINK = '\033[95m'
BLUE = '\033[94m'
ENDC = '\033[0m'
YELLOW  = '\033[33m'
YELLOW_BOLD   = '\033[33;1m'
GREEN_BOLD = '\033[92;1m'
GREEN = '\033[92m'


def  input_param():
    print(BLUE+"输入在map坐标系下的三维坐标"+ENDC)
    target_z = 0.0
    target_x = float(input("请输入目标的 x 坐标: "))
    target_y = float(input("请输入目标的 y 坐标: "))
    target_theta = float(input("请输入目标的方向角 theta (弧度制): "))
    car_target_pose = [target_x,target_y,target_z]
    print(BLUE+"目标3d坐标系和目标角度:{}".format(car_target_pose)+ENDC)
    req = C_poseRequest()
    req.pose_x,req.pose_y,req.pose_z = car_target_pose[0],car_target_pose[1],car_target_pose[2]
    req.theta = target_theta
    result = client.call(req)

if __name__ == '__main__':
    while True:
        rospy.init_node("Car_client")
        client = rospy.ServiceProxy("control_Car", C_pose)
        rospy.wait_for_service("control_Car")
        input_param()
        if cv2.waitKey(1) == ord('c'):
            break