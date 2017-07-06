cmake_minimum_required(VERSION 2.8)

project(object_recognition_msgs)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    sensor_msgs
    std_msgs
    message_generation)

link_directories(${catkin_LIBRARY_DIRS})

add_message_files(
  FILES
  ObjectLocation.msg
  Hypothesis.msg
  CategoryProbability.msg
  CategoricalDistribution.msg
  Recognition.msg
)

add_service_files(FILES 
    RecognizeObjects.srv 
    Classify.srv
    Recognize.srv
    )

generate_messages(DEPENDENCIES sensor_msgs std_msgs)

catkin_package(
	CATKIN_DEPENDS
	sensor_msgs
	std_msgs
	message_runtime
)
