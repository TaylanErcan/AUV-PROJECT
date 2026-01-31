# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "stonefish_ros: 9 messages, 3 services")

set(MSG_I_FLAGS "-Istonefish_ros:/home/taylan/catkin_ws/src/stonefish_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(stonefish_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg" ""
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg" "geometry_msgs/Vector3:stonefish_ros/DVLBeam:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg" "geometry_msgs/Vector3:stonefish_ros/NEDPose:std_msgs/Header"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg" "geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg" ""
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg" "stonefish_ros/Event:std_msgs/Header"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv" ""
)

get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv" NAME_WE)
add_custom_target(_stonefish_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_ros" "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg"
  "${MSG_I_FLAGS}"
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)

### Generating Services
_generate_srv_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_srv_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)
_generate_srv_cpp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
)

### Generating Module File
_generate_module_cpp(stonefish_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(stonefish_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(stonefish_ros_generate_messages stonefish_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_cpp _stonefish_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_ros_gencpp)
add_dependencies(stonefish_ros_gencpp stonefish_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_msg_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg"
  "${MSG_I_FLAGS}"
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)

### Generating Services
_generate_srv_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_srv_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)
_generate_srv_eus(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
)

### Generating Module File
_generate_module_eus(stonefish_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(stonefish_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(stonefish_ros_generate_messages stonefish_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_eus _stonefish_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_ros_geneus)
add_dependencies(stonefish_ros_geneus stonefish_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_msg_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg"
  "${MSG_I_FLAGS}"
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)

### Generating Services
_generate_srv_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_srv_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)
_generate_srv_lisp(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
)

### Generating Module File
_generate_module_lisp(stonefish_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(stonefish_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(stonefish_ros_generate_messages stonefish_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_lisp _stonefish_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_ros_genlisp)
add_dependencies(stonefish_ros_genlisp stonefish_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_msg_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg"
  "${MSG_I_FLAGS}"
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)

### Generating Services
_generate_srv_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_srv_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)
_generate_srv_nodejs(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
)

### Generating Module File
_generate_module_nodejs(stonefish_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(stonefish_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(stonefish_ros_generate_messages stonefish_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_nodejs _stonefish_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_ros_gennodejs)
add_dependencies(stonefish_ros_gennodejs stonefish_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_msg_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg"
  "${MSG_I_FLAGS}"
  "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)

### Generating Services
_generate_srv_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_srv_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)
_generate_srv_py(stonefish_ros
  "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
)

### Generating Module File
_generate_module_py(stonefish_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(stonefish_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(stonefish_ros_generate_messages stonefish_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVLBeam.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/NEDPose.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/DVL.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/INS.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/Event.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/msg/EventArray.msg" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/Respawn.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/taylan/catkin_ws/src/stonefish_ros/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_ros_generate_messages_py _stonefish_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_ros_genpy)
add_dependencies(stonefish_ros_genpy stonefish_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(stonefish_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(stonefish_ros_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(stonefish_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(stonefish_ros_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(stonefish_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(stonefish_ros_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(stonefish_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(stonefish_ros_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(stonefish_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(stonefish_ros_generate_messages_py geometry_msgs_generate_messages_py)
endif()
