cmake_minimum_required(VERSION 2.8.3)
project(unitree_move_base)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  move_base_msgs
  roscpp
  rospy
  tf
  visualization_msgs
  nav_msgs
  std_msgs
)
add_service_files(
  FILES
  C_pose.srv
)
generate_messages(
  DEPENDENCIES
  std_msgs
)
catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)
catkin_install_python(PROGRAMS
 scripts/dog_Server.py
 DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
catkin_install_python(PROGRAMS
 scripts/dog_Client.py
 DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)