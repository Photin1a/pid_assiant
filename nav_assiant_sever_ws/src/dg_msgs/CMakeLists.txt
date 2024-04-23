cmake_minimum_required(VERSION 3.0.2)
project(dg_msgs)

set(CMAKE_EXPORT_COMPILE_COMMANDS on)

set(PACKAGE_DEPENDENCIES
  geometry_msgs
  std_msgs
  actionlib_msgs
  trajectory_msgs
  sensor_msgs
)

find_package(catkin REQUIRED COMPONENTS message_generation ${PACKAGE_DEPENDENCIES})

add_message_files(DIRECTORY msg)
add_service_files(DIRECTORY srv)
add_action_files(DIRECTORY action)

generate_messages(
  DEPENDENCIES
    ${PACKAGE_DEPENDENCIES}
)

catkin_package(
  CATKIN_DEPENDS
    ${PACKAGE_DEPENDENCIES}
    message_runtime
)

