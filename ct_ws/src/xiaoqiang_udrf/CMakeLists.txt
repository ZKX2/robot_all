cmake_minimum_required(VERSION 2.8.3)

project(xiaoqiang_udrf)

find_package(catkin REQUIRED COMPONENTS
  actionlib
  actionlib_msgs
  geometry_msgs
  message_generation
  nav_msgs
  roscpp
  serial
  roslib
  rospy
  sensor_msgs
  std_msgs
  tf
  urdf
  xacro
  gazebo_ros
  gazebo_ros_control
  gazebo_plugins
  controller_interface
  ackermann_msgs
)
add_compile_options(-g -std=c++14) 
catkin_package()

include_directories(include ${catkin_INCLUDE_DIRS} ${PCL_INCLUDE_DIRS})
include_directories(include/${PROJECT_NAME})

# foreach(dir config launch meshes urdf)
# 	install(DIRECTORY ${dir}/
# 		DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${dir})
# endforeach(dir)
