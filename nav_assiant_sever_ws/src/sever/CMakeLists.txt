cmake_minimum_required(VERSION 3.5)
project(sever  VERSION 0.1 LANGUAGES CXX)
set(CMAKE_BUILD_TYPE Debug)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")  #std::thread  must be to linux   
set(CMAKE_EXPORT_COMPILE_COMMANDS on)

include_directories(include)
# FILE(GLOB PROJECT_HEADERS "include/*.h")

####################################TODO  package#######################################
#3rd package
list(APPEND CMAKE_PREFIX_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
# find_package(Boost REQUIRED COMPONENTS system)

#catkin_package
find_package(catkin REQUIRED COMPONENTS
 roscpp 
 rospy 
 std_msgs 
 sensor_msgs 
 geometry_msgs
 photinia_msgs
 tf2_ros
 tf
 )
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES sever`
#  CATKIN_DEPENDS actionlib_msgs
#  DEPENDS system_lib
)
include_directories(
include
${catkin_INCLUDE_DIRS}
)

# ####################################TODO project files#######################################
# #headers 
# list(APPEND PROJECT_HEADERS
#         include/tcp_connect.h
# )
# #sources 
# list(APPEND PROJECT_SOURCES
#         src/pid_test.cpp
#         src/tcp_connect.cpp
# )

# ####################################TODO executable files, librares files#######################################
add_executable(sever
    src/pid_test.cpp
    src/tcp_connect.cpp
)
set_property(TARGET sever PROPERTY AUTOUIC_SEARCH_PATHS ${CMAKE_CURRENT_SOURCE_DIR}/${UI_FILES_PATHS}) #根据CMAKE官方文档，CMAKE会去包含ui_.h的文件所在文件夹寻找.ui文件，或者去AUTOUIC_SEARCH_PATHS下寻找。
set_target_properties(sever PROPERTIES OUTPUT_NAME node PREFIX "") #other name
add_dependencies(sever ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(sever PRIVATE 
${catkin_LIBRARIES}
# Boost::system
)

add_executable(pid_server
    src/tcp_connect.cpp
    src/pid_sever.cpp
)
set_property(TARGET pid_server PROPERTY AUTOUIC_SEARCH_PATHS ${CMAKE_CURRENT_SOURCE_DIR}/${UI_FILES_PATHS}) #根据CMAKE官方文档，CMAKE会去包含ui_.h的文件所在文件夹寻找.ui文件，或者去AUTOUIC_SEARCH_PATHS下寻找。
set_target_properties(pid_server PROPERTIES OUTPUT_NAME pid_server PREFIX "") #other name
add_dependencies(pid_server ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(pid_server PRIVATE 
${catkin_LIBRARIES}
# Boost::system
)

add_executable(move_base
    src/pid_controller.cpp
    src/move_base.cpp
)
set_property(TARGET move_base PROPERTY AUTOUIC_SEARCH_PATHS ${CMAKE_CURRENT_SOURCE_DIR}/${UI_FILES_PATHS}) #根据CMAKE官方文档，CMAKE会去包含ui_.h的文件所在文件夹寻找.ui文件，或者去AUTOUIC_SEARCH_PATHS下寻找。
set_target_properties(move_base PROPERTIES OUTPUT_NAME move_base PREFIX "") #other name
add_dependencies(move_base ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(move_base PRIVATE 
${catkin_LIBRARIES}
# Boost::system
)
