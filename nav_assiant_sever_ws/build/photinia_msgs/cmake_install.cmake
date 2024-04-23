# Install script for directory: /home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs/msg" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/msg/PIDParams.msg")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs/srv" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/srv/PIDParams_srv.srv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs/action" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/action/MoveToGoal.action")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs/msg" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalAction.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalActionFeedback.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalGoal.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalResult.msg"
    "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/photinia_msgs/msg/MoveToGoalFeedback.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs/cmake" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/build/photinia_msgs/catkin_generated/installspace/photinia_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/include/photinia_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/roseus/ros/photinia_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/common-lisp/ros/photinia_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/share/gennodejs/ros/photinia_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/photinia/Documents/nav_assiant_sever_ws/devel/lib/python2.7/dist-packages/photinia_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/photinia/Documents/nav_assiant_sever_ws/devel/lib/python2.7/dist-packages/photinia_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/build/photinia_msgs/catkin_generated/installspace/photinia_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs/cmake" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/build/photinia_msgs/catkin_generated/installspace/photinia_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs/cmake" TYPE FILE FILES
    "/home/photinia/Documents/nav_assiant_sever_ws/build/photinia_msgs/catkin_generated/installspace/photinia_msgsConfig.cmake"
    "/home/photinia/Documents/nav_assiant_sever_ws/build/photinia_msgs/catkin_generated/installspace/photinia_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/photinia_msgs" TYPE FILE FILES "/home/photinia/Documents/nav_assiant_sever_ws/src/photinia_msgs/package.xml")
endif()

