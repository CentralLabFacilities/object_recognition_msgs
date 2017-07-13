# name of the object (must be UUID)
string name 

# objects 2D bounding box
sensor_msgs/RegionOfInterest bounding_box


# center of the 3D object
geometry_msgs/Point3 center

# height, width, depth of the 3D object
float32 width
float32 height
float32 depth

# hypothesis for this object
Hypothesis[] hypotheses
