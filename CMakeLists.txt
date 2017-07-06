cmake_minimum_required(VERSION 2.8)

project(segmentation_msgs)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    sensor_msgs
    std_msgs
    message_generation)

link_directories(${catkin_LIBRARY_DIRS})

add_service_files(FILES segcla.srv segment.srv)
generate_messages(DEPENDENCIES sensor_msgs std_msgs)

catkin_package(
	CATKIN_DEPENDS
	sensor_msgs
	std_msgs
	message_runtime
)
