import rospy
from turn_on_wheeltec_robot.srv import C_pose,C_poseResponse
from math import pi
import math
from geometry_msgs.msg import Twist,TwistStamped
from nav_msgs.msg import Odometry
from std_msgs.msg import Bool
from tf.transformations import euler_from_quaternion
from geometry_msgs.msg import PoseStamped,PointStamped
from tf.transformations import quaternion_from_euler
RED = '\033[91m'
PINK = '\033[95m'
BLUE = '\033[94m'
ENDC = '\033[0m'
YELLOW  = '\033[33m'
YELLOW_BOLD   = '\033[33;1m'
GREEN_BOLD = '\033[92;1m'
GREEN = '\033[92m'

# 定义全局变量

flag = False
reach_flag =False
point_z = 0.0

# 机器人当前位置回调函数
def odom_callback(msg):
    global point_z
    point_z = msg.pose.pose.position.z

def reach_callback(reach_msg):
    global reach_flag
    if reach_msg.data :
        reach_flag = True
    else:
        reach_flag = False

def move_to_goal(target_x, target_y,target_theta):
   
    global flag,reach_flag
    # 订阅里程计数据
    rospy.Subscriber('/state_estimation', Odometry, odom_callback)
    # 订阅是否到达goalpoint
    rospy.Subscriber('/far_reach_goal_status', Bool, reach_callback)
    # 设置goalpoint发布者
    pub_goalpoint = rospy.Publisher('/goal_point', PointStamped, queue_size=100)
    rate = rospy.Rate(10)  # 10Hz

    quaternion = quaternion_from_euler(0.0, 0.0, target_theta)

    reach_flag = False
    flag = False
    while flag == False:

        # 创建一个PointStamped消息，来发布
        set_point = PointStamped()
        set_point.header.frame_id = "map"
        set_point.header.stamp = rospy.Time.now()
        set_point.point.x= target_x
        set_point.point.y= target_y
        set_point.point.z = point_z
        # set_point.pose.orientation.x = quaternion[0]
        # set_point.pose.orientation.y = quaternion[1]
        # set_point.pose.orientation.z = quaternion[2]
        # set_point.pose.orientation.w = quaternion[3]
        print(BLUE+"发送goalpoint坐标x:{:.2f}".format(target_x)+ENDC)
        print(BLUE+"发送goalpoint坐标y:{:.2f}".format(target_y)+ENDC)
        print(BLUE+"发送goalpoint坐标z:{:.6f}".format(point_z)+ENDC)
        if reach_flag ==True:
            print(GREEN+"到达状态:{}".format(reach_flag)+ENDC)
            rospy.loginfo("到达目标点！")
            flag = True
            reach_flag = False
            break
        else:
            print(RED+"到达状态:{}".format(reach_flag)+ENDC)
        # 发布waypoint坐标
        pub_goalpoint.publish(set_point)
        # 设置循环频率
        rate.sleep()

def C_pose_callback(req):
    global flag,reach_flag
    rospy.loginfo("正在响应请求...")
    target_pose = [req.pose_x,req.pose_y,req.pose_z]
    target_angle = req.theta
    print(PINK+"收到目标3d坐标系和目标角度:{}".format(target_pose)+ENDC)
    move_to_goal(target_pose[0], target_pose[1],target_angle)
    response = C_poseResponse()
    response.success = True
    return response

if __name__ == "__main__":
    rospy.init_node('Car_server')
    server = rospy.Service("control_Car",C_pose,C_pose_callback )
    rospy.loginfo("正在等待客户端请求...")
    rospy.spin()