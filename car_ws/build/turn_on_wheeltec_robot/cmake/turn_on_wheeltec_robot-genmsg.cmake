# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turn_on_wheeltec_robot: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turn_on_wheeltec_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv" NAME_WE)
add_custom_target(_turn_on_wheeltec_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turn_on_wheeltec_robot" "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(turn_on_wheeltec_robot
  "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turn_on_wheeltec_robot
)

### Generating Module File
_generate_module_cpp(turn_on_wheeltec_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turn_on_wheeltec_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turn_on_wheeltec_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turn_on_wheeltec_robot_generate_messages turn_on_wheeltec_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv" NAME_WE)
add_dependencies(turn_on_wheeltec_robot_generate_messages_cpp _turn_on_wheeltec_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turn_on_wheeltec_robot_gencpp)
add_dependencies(turn_on_wheeltec_robot_gencpp turn_on_wheeltec_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turn_on_wheeltec_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(turn_on_wheeltec_robot
  "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turn_on_wheeltec_robot
)

### Generating Module File
_generate_module_eus(turn_on_wheeltec_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turn_on_wheeltec_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turn_on_wheeltec_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turn_on_wheeltec_robot_generate_messages turn_on_wheeltec_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv" NAME_WE)
add_dependencies(turn_on_wheeltec_robot_generate_messages_eus _turn_on_wheeltec_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turn_on_wheeltec_robot_geneus)
add_dependencies(turn_on_wheeltec_robot_geneus turn_on_wheeltec_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turn_on_wheeltec_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(turn_on_wheeltec_robot
  "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turn_on_wheeltec_robot
)

### Generating Module File
_generate_module_lisp(turn_on_wheeltec_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turn_on_wheeltec_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turn_on_wheeltec_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turn_on_wheeltec_robot_generate_messages turn_on_wheeltec_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv" NAME_WE)
add_dependencies(turn_on_wheeltec_robot_generate_messages_lisp _turn_on_wheeltec_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turn_on_wheeltec_robot_genlisp)
add_dependencies(turn_on_wheeltec_robot_genlisp turn_on_wheeltec_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turn_on_wheeltec_robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(turn_on_wheeltec_robot
  "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turn_on_wheeltec_robot
)

### Generating Module File
_generate_module_nodejs(turn_on_wheeltec_robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turn_on_wheeltec_robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turn_on_wheeltec_robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turn_on_wheeltec_robot_generate_messages turn_on_wheeltec_robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv" NAME_WE)
add_dependencies(turn_on_wheeltec_robot_generate_messages_nodejs _turn_on_wheeltec_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turn_on_wheeltec_robot_gennodejs)
add_dependencies(turn_on_wheeltec_robot_gennodejs turn_on_wheeltec_robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turn_on_wheeltec_robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(turn_on_wheeltec_robot
  "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turn_on_wheeltec_robot
)

### Generating Module File
_generate_module_py(turn_on_wheeltec_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turn_on_wheeltec_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turn_on_wheeltec_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turn_on_wheeltec_robot_generate_messages turn_on_wheeltec_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/roszkx20/robot_all/car_ws/src/turn_on_wheeltec_robot/srv/C_pose.srv" NAME_WE)
add_dependencies(turn_on_wheeltec_robot_generate_messages_py _turn_on_wheeltec_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turn_on_wheeltec_robot_genpy)
add_dependencies(turn_on_wheeltec_robot_genpy turn_on_wheeltec_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turn_on_wheeltec_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turn_on_wheeltec_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turn_on_wheeltec_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turn_on_wheeltec_robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turn_on_wheeltec_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turn_on_wheeltec_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turn_on_wheeltec_robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turn_on_wheeltec_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turn_on_wheeltec_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turn_on_wheeltec_robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turn_on_wheeltec_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turn_on_wheeltec_robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turn_on_wheeltec_robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turn_on_wheeltec_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turn_on_wheeltec_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turn_on_wheeltec_robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turn_on_wheeltec_robot_generate_messages_py std_msgs_generate_messages_py)
endif()
