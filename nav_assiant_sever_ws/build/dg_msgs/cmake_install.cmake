# Install script for directory: /home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/photinia/Documents/nav_assiant_sever_ws/install")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/msg" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPose.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AlterPoseAndJoints.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelManualControl.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AntiCollisionWheelState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/AssembleState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardManualControl.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/BollardState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CPUMemNetState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CameraInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ChassisState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionJoint.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CorrectionPoint.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/CropBox.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/DiskState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentCommon.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/EquipmentGroup.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/GeneralHardwareAndNodeState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/HardwareAndNodeState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImagePoint.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ImageResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/LiftingColumnInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/Localization3D.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/MonitorState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkCardState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NetworkedDevicesState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/NotificationInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/PointSequence.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/ROSTopicState.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotArmInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotAuth.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/RobotInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/SlideTableInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfo.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TeachDataInfoArray.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/TrainDataSet.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/msg/UniversalStateInfo.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/srv" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieAligning.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BogieModel.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardHoming.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/BollardPauseRecvTerm.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraDataCollect.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraPcdFlag.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CameraTargetOrder.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CarBasePauseRecovery.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelAligning.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChannelMap.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ChassisStateSrv.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CollisionTest.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentImagePoint.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentPoseAndFrame.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/CurrentTeachingStopLocation.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/EmergencyStop.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FastLioOdometry.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/FindPoints.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetAssembleState.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetBollardState.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetCurrentMapList.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetNavMode.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetAntiCollisionWheel.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/GetSetLightBarColor.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/HardwareAndNodeStateDiagnosis.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/Interploate.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarDataCollect.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LidarPerception.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitLimitPosition.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LiftkitUpDown.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/LoadJson.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/MoveToNavPoint.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PcdRegistration.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/PresetStopLocation.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/ReturnJointAnglesAndPose.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqModelLoad.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqMove.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqPauseRecovery.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmAcqReady.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmClearError.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmEnable.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmHomeCheck.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmPlay.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmRest.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmSpeed.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmStandby.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotArmTeaching.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/RobotStateSrv.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SafeDistanceSet.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SetNavMode.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SoundAudioControl.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SpeedScale.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StartRecording.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/StopRecording.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/SwitchMap.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPicture.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakeAPointCloud.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TakePictures.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TaskPauseRecovery.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TeachingRegframe.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainStopLocation.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TrainTypeMap.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/TunnelModel.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/WorkshopMap.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGAuxUtility.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToCharge.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGGoToElevator.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGLandMarkSearch.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGMoveTask.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGPillerCenter.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/XGSwitchMap.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/getMultiJointData.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential.srv"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/srv/potential_cloud.srv"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/action" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/action/AcquisitionTask.action"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/action/BollardOperation.action"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/action/CarBaseMoveTask.action"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/action/CurrentCorrectionPoint.action"
    "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/action/TakeAPicture.action"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/msg" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskAction.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskActionFeedback.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/AcquisitionTaskFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/msg" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationAction.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationActionFeedback.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/BollardOperationFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/msg" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskAction.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskActionFeedback.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CarBaseMoveTaskFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/msg" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointAction.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointActionFeedback.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/CurrentCorrectionPointFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/msg" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureAction.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureActionFeedback.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/dg_msgs/msg/TakeAPictureFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/cmake" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/build/dg_msgs/catkin_generated/installspace/dg_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/include/dg_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/roseus/ros/dg_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/common-lisp/ros/dg_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/gennodejs/ros/dg_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/photinia/Documents/nav_assiant_sever_ws/devel/lib/python2.7/dist-packages/dg_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/lib/python2.7/dist-packages/dg_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/build/dg_msgs/catkin_generated/installspace/dg_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/cmake" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/build/dg_msgs/catkin_generated/installspace/dg_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs/cmake" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/build/dg_msgs/catkin_generated/installspace/dg_msgsConfig.cmake"
    "/home/photinia/Documents/nav_assiant_sever_ws/build/dg_msgs/catkin_generated/installspace/dg_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dg_msgs" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/src/dg_msgs/package.xml")
endif()

