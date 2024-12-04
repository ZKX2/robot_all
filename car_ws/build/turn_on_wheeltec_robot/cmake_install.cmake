# Install script for directory: /home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/roszkx20/robot_all/car_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turn_on_wheeltec_robot/srv" TYPE FILE FILES "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turn_on_wheeltec_robot/cmake" TYPE FILE FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/turn_on_wheeltec_robot-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/roszkx20/robot_all/car_ws/devel/include/turn_on_wheeltec_robot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/roszkx20/robot_all/car_ws/devel/share/roseus/ros/turn_on_wheeltec_robot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/roszkx20/robot_all/car_ws/devel/share/common-lisp/ros/turn_on_wheeltec_robot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/roszkx20/robot_all/car_ws/devel/share/gennodejs/ros/turn_on_wheeltec_robot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/roszkx20/robot_all/car_ws/devel/lib/python3/dist-packages/turn_on_wheeltec_robot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/roszkx20/robot_all/car_ws/devel/lib/python3/dist-packages/turn_on_wheeltec_robot")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/turn_on_wheeltec_robot.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turn_on_wheeltec_robot/cmake" TYPE FILE FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/turn_on_wheeltec_robot-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turn_on_wheeltec_robot/cmake" TYPE FILE FILES
    "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/turn_on_wheeltec_robotConfig.cmake"
    "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/turn_on_wheeltec_robotConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turn_on_wheeltec_robot" TYPE FILE FILES "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turn_on_wheeltec_robot" TYPE PROGRAM FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/load_map.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turn_on_wheeltec_robot" TYPE PROGRAM FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/car_Server.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turn_on_wheeltec_robot" TYPE PROGRAM FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/car_Client.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turn_on_wheeltec_robot" TYPE PROGRAM FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/servo_commends.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turn_on_wheeltec_robot" TYPE PROGRAM FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/keyboard_teleop.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turn_on_wheeltec_robot" TYPE PROGRAM FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/transform.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/turn_on_wheeltec_robot" TYPE PROGRAM FILES "/home/roszkx20/robot_all/car_ws/build/turn_on_wheeltec_robot/catkin_generated/installspace/gazebo_odometry.py")
endif()

