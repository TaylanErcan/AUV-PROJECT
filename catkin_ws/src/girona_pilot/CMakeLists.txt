cmake_minimum_required(VERSION 3.0.2)
project(girona_pilot)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  geometry_msgs
  nav_msgs
  tf
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(pilot_complete src/pilot_complete.cpp)
target_link_libraries(pilot_complete ${catkin_LIBRARIES})
