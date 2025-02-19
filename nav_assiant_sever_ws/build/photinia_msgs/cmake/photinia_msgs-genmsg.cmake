# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "photinia_msgs: 8 messages, 1 services")

set(MSG_I_FLAGS "-Iphotinia_msgs:/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg;-Iphotinia_msgs:/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(photinia_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:geometry_msgs/Pose:photinia_msgs/MoveToGoalFeedback:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg" "geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Pose:std_msgs/Header:photinia_msgs/MoveToGoalGoal:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg" "actionlib_msgs/GoalID:photinia_msgs/MoveToGoalActionFeedback:photinia_msgs/MoveToGoalActionResult:actionlib_msgs/GoalStatus:photinia_msgs/MoveToGoalActionGoal:photinia_msgs/MoveToGoalResult:geometry_msgs/Vector3:geometry_msgs/Pose:photinia_msgs/MoveToGoalFeedback:std_msgs/Header:geometry_msgs/Twist:photinia_msgs/MoveToGoalGoal:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg" NAME_WE)
add_custom_target(_photinia_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "photinia_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:geometry_msgs/Twist:photinia_msgs/MoveToGoalResult:geometry_msgs/Vector3:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)

### Generating Services
_generate_srv_cpp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
)

### Generating Module File
_generate_module_cpp(photinia_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(photinia_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(photinia_msgs_generate_messages photinia_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_cpp _photinia_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(photinia_msgs_gencpp)
add_dependencies(photinia_msgs_gencpp photinia_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS photinia_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)
_generate_msg_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)

### Generating Services
_generate_srv_eus(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
)

### Generating Module File
_generate_module_eus(photinia_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(photinia_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(photinia_msgs_generate_messages photinia_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_eus _photinia_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(photinia_msgs_geneus)
add_dependencies(photinia_msgs_geneus photinia_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS photinia_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)
_generate_msg_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)

### Generating Services
_generate_srv_lisp(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
)

### Generating Module File
_generate_module_lisp(photinia_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(photinia_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(photinia_msgs_generate_messages photinia_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_lisp _photinia_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(photinia_msgs_genlisp)
add_dependencies(photinia_msgs_genlisp photinia_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS photinia_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)
_generate_msg_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)

### Generating Services
_generate_srv_nodejs(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
)

### Generating Module File
_generate_module_nodejs(photinia_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(photinia_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(photinia_msgs_generate_messages photinia_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_nodejs _photinia_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(photinia_msgs_gennodejs)
add_dependencies(photinia_msgs_gennodejs photinia_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS photinia_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)
_generate_msg_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)

### Generating Services
_generate_srv_py(photinia_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
)

### Generating Module File
_generate_module_py(photinia_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(photinia_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(photinia_msgs_generate_messages photinia_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg" NAME_WE)
add_dependencies(photinia_msgs_generate_messages_py _photinia_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(photinia_msgs_genpy)
add_dependencies(photinia_msgs_genpy photinia_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS photinia_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/photinia_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(photinia_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(photinia_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(photinia_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/photinia_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(photinia_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(photinia_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(photinia_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/photinia_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(photinia_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(photinia_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(photinia_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/photinia_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(photinia_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(photinia_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(photinia_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/photinia_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(photinia_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(photinia_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(photinia_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
