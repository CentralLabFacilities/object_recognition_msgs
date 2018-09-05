# name of the object (must be UUID)
string name 

# objects 2D bounding box
sensor_msgs/RegionOfInterest bounding_box


# center of the 3D object
geometry_msgs/Point center

# height, width, depth of the 3D object
float32 width
float32 height
float32 depth

# quaternion representation of rotation of this object
float32 quadx
float32 quady
float32 quadz
float32 quadw

# hypothesis for this object
Hypothesis[] hypotheses
