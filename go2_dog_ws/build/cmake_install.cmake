# Install script for directory: /home/roszkx20/robot_all/go2_dog_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/roszkx20/robot_all/go2_dog_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roszkx20/robot_all/go2_dog_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roszkx20/robot_all/go2_dog_ws/install" TYPE PROGRAM FILES "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roszkx20/robot_all/go2_dog_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roszkx20/robot_all/go2_dog_ws/install" TYPE PROGRAM FILES "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roszkx20/robot_all/go2_dog_ws/install/setup.bash;/home/roszkx20/robot_all/go2_dog_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roszkx20/robot_all/go2_dog_ws/install" TYPE FILE FILES
    "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/setup.bash"
    "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roszkx20/robot_all/go2_dog_ws/install/setup.sh;/home/roszkx20/robot_all/go2_dog_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roszkx20/robot_all/go2_dog_ws/install" TYPE FILE FILES
    "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/setup.sh"
    "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roszkx20/robot_all/go2_dog_ws/install/setup.zsh;/home/roszkx20/robot_all/go2_dog_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roszkx20/robot_all/go2_dog_ws/install" TYPE FILE FILES
    "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/roszkx20/robot_all/go2_dog_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/roszkx20/robot_all/go2_dog_ws/install" TYPE FILE FILES "/home/roszkx20/robot_all/go2_dog_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/roszkx20/robot_all/go2_dog_ws/build/gtest/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/unitree_ros_to_real/unitree_legged_sdk/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_msgs/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_simulator/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/a1_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/aliengo_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/b1_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/go1_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/laikago_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/lio_sam/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_legged_msgs/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/unitree_legged_control/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/unitree_ros_to_real/unitree_legged_real/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unilidar_sdk/unitree_lidar_ros/src/unitree_lidar_ros/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_guide/unitree_actuator_sdk/unitree_motor_ctrl/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/b2_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/b2w_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/go2_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/go2w_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/h1_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/unitree_controller/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/unitree_gazebo/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_guide/unitree_guide/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_guide/unitree_move_base/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_driver/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_gazebo_plugins/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_laserscan/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_pcl/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/velodyne/velodyne_pointcloud/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/aliengoZ1_description/cmake_install.cmake")
  include("/home/roszkx20/robot_all/go2_dog_ws/build/unitree_ros/robots/z1_description/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/roszkx20/robot_all/go2_dog_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
