cmake_minimum_required(VERSION 2.8)

project(object_tracking_msgs)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    sensor_msgs
    std_msgs
    grasping_msgs
    message_generation)

link_directories(${catkin_LIBRARY_DIRS})

add_message_files(
  FILES
  ObjectLocation.msg
  ObjectShape.msg
  Hypothesis.msg
  ObjectHypothesis.msg
  CategoryProbability.msg
  CategoricalDistribution.msg
  Recognition.msg
  BoundingBox.msg
  Annotation.msg
  Detection.msg
)

add_service_files(FILES 
    RecognizeObjects.srv 
    DetectPlanes.srv
    Classify.srv
    Recognize.srv
    Annotate.srv
    DetectObjects.srv
)

generate_messages(DEPENDENCIES sensor_msgs std_msgs grasping_msgs)

catkin_package(
	CATKIN_DEPENDS
	sensor_msgs
	std_msgs
	grasping_msgs
	message_runtime
)
