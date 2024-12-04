import rospy
from unitree_move_base.srv import C_pose,C_poseResponse
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
current_yaw = 0.0

TARGET_YAW = math.radians(0)  # 目标yaw角度，单位：弧度

# 定义误差容忍度和控制速度
ANGLE_TOLERANCE = 0.05  # 允许的误差容忍度，单位：弧度
ANGULAR_VELOCITY = 0.4  # 最大角速度，单位：rad/s

# 角度差计算函数
def get_yaw_from_quaternion(qx, qy, qz, qw):
    # """将四元数转换为Yaw角（单位：弧度"""
    euler = tf.transformations.euler_from_quaternion([qx, qy, qz, qw])
    yaw = euler[2]
    return yaw

# 机器人当前位置回调函数
def odom_callback(msg):
    global point_z,current_yaw
    point_z = msg.pose.pose.position.z
    orientation = msg.pose.pose.orientation
    current_yaw = get_yaw_from_quaternion(orientation.x, orientation.y, orientation.z, orientation.w)

def reach_callback(reach_msg):
    global reach_flag
    if reach_msg.data :
        reach_flag = True
    else:
        reach_flag = False

def set_goal_thera(target_theta):

    # 订阅里程计数据
    rospy.Subscriber('/state_estimation', Odometry, odom_callback)
    # 创建cmd_vel发布器
    cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
    flag_theta = False
    rate = rospy.Rate(10)  # 10Hz
    while flag_theta == False:
        # 计算yaw角的误差
        yaw_error = target_theta - current_yaw
        yaw_error = math.atan2(math.sin(yaw_error), math.cos(yaw_error))  # 确保误差在 -pi 到 pi 之间
        # 如果误差大于容忍度，则进行调整
        if abs(yaw_error) > ANGLE_TOLERANCE:
            # 控制角速度
            cmd_vel = Twist()
            if yaw_error > 0:
                cmd_vel.angular.z = ANGULAR_VELOCITY 
            else:
                cmd_vel.angular.z = -ANGULAR_VELOCITY
            print(BLUE+"Current yaw:{:.4f}".format(current_yaw)+ENDC)
            print(BLUE+"Target yaw:{:.4f}".format(target_theta)+ENDC)
            print(BLUE+"Error:{:.4f}".format(yaw_error)+ENDC)
        else:
            # 目标已达到，停止旋转
            flag_theta = True
            cmd_vel = Twist()
            cmd_vel.angular.z = 0.0
            cmd_vel_pub.publish(cmd_vel)
            rospy.loginfo("到达目标点！")
            break
        cmd_vel_pub.publish(cmd_vel)
        rate.sleep()

def move_to_goal(target_x, target_y):
   
    global flag,reach_flag
    # 订阅里程计数据
    rospy.Subscriber('/state_estimation', Odometry, odom_callback)
    # 订阅是否到达goalpoint
    rospy.Subscriber('/far_reach_goal_status', Bool, reach_callback)
    # 设置goalpoint发布者
    pub_goalpoint = rospy.Publisher('/goal_point', PointStamped, queue_size=100)
    rate = rospy.Rate(10)  # 10Hz

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
        print(BLUE+"发送goalpoint坐标x:{:.2f}".format(target_x)+ENDC)
        print(BLUE+"发送goalpoint坐标y:{:.2f}".format(target_y)+ENDC)
        print(BLUE+"发送goalpoint坐标z:{:.6f}".format(point_z)+ENDC)
        if reach_flag ==True:
            print(GREEN+"到达状态:{}".format(reach_flag)+ENDC)
            # rospy.loginfo("到达目标点！")
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
    target_pose = [req.pose_x,req.pose_y,req.pose_z,req.theta]
    target_angle = req.theta
    print(PINK+"收到目标3d坐标系和目标角度:{}".format(target_pose)+ENDC)
    move_to_goal(target_pose[0], target_pose[1])
    set_goal_thera(target_angle)
    response = C_poseResponse()
    response.success = True
    return response

if __name__ == "__main__":
    rospy.init_node('Dog_server')
    server = rospy.Service("control_Dog",C_pose,C_pose_callback )
    rospy.loginfo("正在等待客户端请求...")
    rospy.spin()