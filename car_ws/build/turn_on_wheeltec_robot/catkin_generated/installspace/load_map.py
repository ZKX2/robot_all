#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import rospy
from gazebo_msgs.srv import SpawnModel
from geometry_msgs.msg import Pose

def load_map():
    # 初始化ROS节点
    rospy.init_node('load_map_node', anonymous=True)

    # 等待SpawnModel服务准备
    rospy.wait_for_service('/gazebo/spawn_sdf_model')

    try:
        spawn_model = rospy.ServiceProxy('/gazebo/spawn_sdf_model', SpawnModel)

        # 定义模型的名称和路径
        model_name = 'my_map'
        model_xml = ''
        
        # 读取模型文件
        with open('/home/roszkx/car_ws/src/turn_on_wheeltec_robot/models/home/model.sdf', 'r') as f:
            model_xml = f.read()

        # 设置模型的位置
        model_pose = Pose()
        model_pose.position.x = 0
        model_pose.position.y = 0
        model_pose.position.z = 0
        model_pose.orientation.w = 1

        # 调用服务加载模型
        spawn_model(model_name, model_xml, "", model_pose, "world")

        rospy.loginfo("Map loaded successfully!")

    except rospy.ServiceException as e:
        rospy.logerr("Service call failed: %s" % e)

if __name__ == '__main__':
    load_map()
