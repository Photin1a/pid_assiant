# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dg_msgs: 73 messages, 74 services")

set(MSG_I_FLAGS "-Idg_msgs:/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg;-Idg_msgs:/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dg_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv" "dg_msgs/UniversalStateInfo:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Vector3:geometry_msgs/Transform:dg_msgs/CropBox:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg" "dg_msgs/TeachDataInfo:trajectory_msgs/JointTrajectoryPoint:dg_msgs/CorrectionPoint:geometry_msgs/PoseArray:geometry_msgs/Pose:dg_msgs/CropBox:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg" "geometry_msgs/Pose:std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:geometry_msgs/Point:std_msgs/MultiArrayDimension:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv" "geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg" "dg_msgs/ImageGoal:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg" "dg_msgs/LiftingColumnInfo:dg_msgs/RobotArmInfo:dg_msgs/SlideTableInfo:dg_msgs/CameraInfo:dg_msgs/EquipmentCommon"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg" "geometry_msgs/Quaternion:dg_msgs/ROSTopicState:dg_msgs/CPUMemNetState:dg_msgs/NetworkCardState:dg_msgs/GeneralHardwareAndNodeState:dg_msgs/ChassisState:geometry_msgs/PoseStamped:geometry_msgs/Pose:dg_msgs/UniversalStateInfo:dg_msgs/MonitorState:std_msgs/Header:geometry_msgs/Point:dg_msgs/NetworkedDevicesState:dg_msgs/DiskState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv" "dg_msgs/UniversalStateInfo:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dg_msgs/BollardOperationFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg" "geometry_msgs/Pose:dg_msgs/MonitorState:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg" "dg_msgs/TakeAPictureGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg" "actionlib_msgs/GoalID:dg_msgs/ImageGoal:dg_msgs/PointSequence:dg_msgs/ImagePoint:dg_msgs/CorrectionPoint:dg_msgs/AcquisitionTaskGoal:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:dg_msgs/CorrectionJoint:dg_msgs/CropBox:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg" "geometry_msgs/Pose:std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:geometry_msgs/Point:std_msgs/MultiArrayDimension:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg" "dg_msgs/EquipmentCommon"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv" "geometry_msgs/Pose:std_msgs/MultiArrayLayout:std_msgs/Int8MultiArray:geometry_msgs/Point:std_msgs/MultiArrayDimension:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg" "dg_msgs/ImageGoal:dg_msgs/ImagePoint:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv" "dg_msgs/BollardState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg" "dg_msgs/MonitorState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv" "dg_msgs/AntiCollisionWheelState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv" "dg_msgs/AssembleState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg" "dg_msgs/MonitorState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg" "trajectory_msgs/JointTrajectoryPoint:dg_msgs/CorrectionPoint:geometry_msgs/PoseArray:geometry_msgs/Pose:dg_msgs/CropBox:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg" "actionlib_msgs/GoalID:dg_msgs/CarBaseMoveTaskResult:actionlib_msgs/GoalStatus:dg_msgs/CarBaseMoveTaskActionFeedback:dg_msgs/CarBaseMoveTaskActionResult:dg_msgs/CarBaseMoveTaskActionGoal:geometry_msgs/Pose:dg_msgs/CarBaseMoveTaskFeedback:dg_msgs/UniversalStateInfo:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:dg_msgs/CarBaseMoveTaskGoal"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:dg_msgs/UniversalStateInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg" "actionlib_msgs/GoalID:dg_msgs/BollardOperationGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv" "dg_msgs/UniversalStateInfo:geometry_msgs/TransformStamped:geometry_msgs/Vector3:geometry_msgs/Transform:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg" "dg_msgs/ImageResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dg_msgs/AcquisitionTaskFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg" "dg_msgs/EquipmentCommon"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg" "dg_msgs/CurrentCorrectionPointFeedback:actionlib_msgs/GoalID:dg_msgs/CurrentCorrectionPointResult:actionlib_msgs/GoalStatus:dg_msgs/CurrentCorrectionPointActionFeedback:std_msgs/Header:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:dg_msgs/CurrentCorrectionPointGoal:geometry_msgs/Quaternion:dg_msgs/CurrentCorrectionPointActionResult:geometry_msgs/Point:geometry_msgs/PoseStamped:dg_msgs/CurrentCorrectionPointActionGoal"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv" "geometry_msgs/Pose:std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:geometry_msgs/Point:std_msgs/MultiArrayDimension:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg" "actionlib_msgs/GoalID:dg_msgs/UniversalStateInfo:dg_msgs/TakeAPictureActionResult:actionlib_msgs/GoalStatus:dg_msgs/TakeAPictureFeedback:dg_msgs/TakeAPictureActionFeedback:dg_msgs/TakeAPictureGoal:std_msgs/Header:dg_msgs/TakeAPictureResult:dg_msgs/TakeAPictureActionGoal"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv" "dg_msgs/PointSequence:dg_msgs/CorrectionJoint:dg_msgs/UniversalStateInfo:dg_msgs/ImagePoint:dg_msgs/CorrectionPoint:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:dg_msgs/ImageGoal:dg_msgs/CropBox:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg" "dg_msgs/TakeAPictureFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg" "actionlib_msgs/GoalID:dg_msgs/CurrentCorrectionPointGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv" "geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseArray"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg" "dg_msgs/EquipmentCommon"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg" "dg_msgs/MonitorState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv" "std_msgs/MultiArrayLayout:geometry_msgs/PoseArray:geometry_msgs/Pose:std_msgs/Float64MultiArray:std_msgs/Header:geometry_msgs/Quaternion:std_msgs/MultiArrayDimension:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv" "std_msgs/MultiArrayLayout:geometry_msgs/Pose:std_msgs/Float64MultiArray:dg_msgs/TrainDataSet:geometry_msgs/Point:std_msgs/MultiArrayDimension:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv" "geometry_msgs/Quaternion:dg_msgs/HardwareAndNodeState:dg_msgs/CPUMemNetState:dg_msgs/GeneralHardwareAndNodeState:dg_msgs/ROSTopicState:dg_msgs/ChassisState:geometry_msgs/PoseStamped:geometry_msgs/Pose:dg_msgs/UniversalStateInfo:dg_msgs/MonitorState:std_msgs/Header:dg_msgs/NetworkCardState:geometry_msgs/Point:dg_msgs/NetworkedDevicesState:dg_msgs/DiskState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv" "dg_msgs/ChassisInfo:dg_msgs/EquipmentCommon"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg" "actionlib_msgs/GoalID:dg_msgs/CarBaseMoveTaskFeedback:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg" "dg_msgs/TakeAPictureResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dg_msgs/UniversalStateInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv" "sensor_msgs/PointCloud2:sensor_msgs/PointField:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg" "dg_msgs/MonitorState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg" "dg_msgs/EquipmentCommon"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv" "dg_msgs/UniversalStateInfo:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg" "dg_msgs/EquipmentCommon"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg" "dg_msgs/ImageResult"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg" "geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv" "dg_msgs/RobotInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg" "actionlib_msgs/GoalID:dg_msgs/CurrentCorrectionPointResult:actionlib_msgs/GoalStatus:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg" "dg_msgs/MonitorState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg" "dg_msgs/ImageResult:actionlib_msgs/GoalID:dg_msgs/AcquisitionTaskFeedback:dg_msgs/ImageGoal:dg_msgs/PointSequence:dg_msgs/AcquisitionTaskActionFeedback:dg_msgs/AcquisitionTaskActionGoal:dg_msgs/CorrectionPoint:dg_msgs/AcquisitionTaskGoal:actionlib_msgs/GoalStatus:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:dg_msgs/CorrectionJoint:dg_msgs/CropBox:std_msgs/Header:dg_msgs/AcquisitionTaskResult:dg_msgs/ImagePoint:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:dg_msgs/AcquisitionTaskActionResult:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg" "dg_msgs/ImageResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dg_msgs/AcquisitionTaskResult:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv" "dg_msgs/ImageGoal:dg_msgs/ImageResult"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dg_msgs/UniversalStateInfo:dg_msgs/CarBaseMoveTaskResult:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg" "dg_msgs/PointSequence:dg_msgs/ImageGoal:dg_msgs/ImagePoint:dg_msgs/CorrectionPoint:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:dg_msgs/CorrectionJoint:dg_msgs/CropBox:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv" "dg_msgs/UniversalStateInfo"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dg_msgs/BollardOperationResult:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg" "actionlib_msgs/GoalID:dg_msgs/BollardOperationGoal:actionlib_msgs/GoalStatus:std_msgs/Header:dg_msgs/BollardOperationActionGoal:dg_msgs/BollardOperationActionResult:dg_msgs/BollardOperationActionFeedback:dg_msgs/BollardOperationFeedback:dg_msgs/BollardOperationResult"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv" "dg_msgs/PointSequence:dg_msgs/ImageGoal:dg_msgs/ImagePoint:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Pose:dg_msgs/UniversalStateInfo:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg" "dg_msgs/ImageResult"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg" "actionlib_msgs/GoalID:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:dg_msgs/CarBaseMoveTaskGoal"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg" "dg_msgs/NetworkCardState:dg_msgs/MonitorState:dg_msgs/DiskState"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg" ""
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:dg_msgs/CurrentCorrectionPointFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv" NAME_WE)
add_custom_target(_dg_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dg_msgs" "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv" "std_msgs/MultiArrayLayout:geometry_msgs/Pose:std_msgs/Float64MultiArray:dg_msgs/TrainDataSet:geometry_msgs/Point:std_msgs/MultiArrayDimension:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_msg_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)

### Generating Services
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int8MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)
_generate_srv_cpp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
)

### Generating Module File
_generate_module_cpp(dg_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dg_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dg_msgs_generate_messages dg_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_cpp _dg_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dg_msgs_gencpp)
add_dependencies(dg_msgs_gencpp dg_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dg_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_msg_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)

### Generating Services
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int8MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)
_generate_srv_eus(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
)

### Generating Module File
_generate_module_eus(dg_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dg_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dg_msgs_generate_messages dg_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_eus _dg_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dg_msgs_geneus)
add_dependencies(dg_msgs_geneus dg_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dg_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_msg_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)

### Generating Services
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int8MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)
_generate_srv_lisp(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
)

### Generating Module File
_generate_module_lisp(dg_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dg_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dg_msgs_generate_messages dg_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_lisp _dg_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dg_msgs_genlisp)
add_dependencies(dg_msgs_genlisp dg_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dg_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_msg_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)

### Generating Services
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int8MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)
_generate_srv_nodejs(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
)

### Generating Module File
_generate_module_nodejs(dg_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dg_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dg_msgs_generate_messages dg_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_nodejs _dg_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dg_msgs_gennodejs)
add_dependencies(dg_msgs_gennodejs dg_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dg_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_msg_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)

### Generating Services
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int8MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv"
  "${MSG_I_FLAGS}"
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Transform.msg;/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)
_generate_srv_py(dg_msgs
  "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
)

### Generating Module File
_generate_module_py(dg_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dg_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dg_msgs_generate_messages dg_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv" NAME_WE)
add_dependencies(dg_msgs_generate_messages_py _dg_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dg_msgs_genpy)
add_dependencies(dg_msgs_genpy dg_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dg_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dg_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dg_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dg_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(dg_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(dg_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(dg_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dg_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dg_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dg_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(dg_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(dg_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(dg_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dg_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dg_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dg_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(dg_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(dg_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(dg_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dg_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dg_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dg_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(dg_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(dg_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(dg_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dg_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dg_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dg_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(dg_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(dg_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(dg_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
