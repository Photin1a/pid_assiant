;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TrainDataSet)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TrainDataSet (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TRAINDATASET")
  (make-package "DG_MSGS::TRAINDATASET"))

(in-package "ROS")
;;//! \htmlinclude TrainDataSet.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dg_msgs::TrainDataSet
  :super ros::object
  :slots (_pose_data _multi_joint_data ))

(defmethod dg_msgs::TrainDataSet
  (:init
   (&key
    ((:pose_data __pose_data) (instance geometry_msgs::Pose :init))
    ((:multi_joint_data __multi_joint_data) (let (r) (dotimes (i 0) (push (instance std_msgs::Float64MultiArray :init) r)) r))
    )
   (send-super :init)
   (setq _pose_data __pose_data)
   (setq _multi_joint_data __multi_joint_data)
   self)
  (:pose_data
   (&rest __pose_data)
   (if (keywordp (car __pose_data))
       (send* _pose_data __pose_data)
     (progn
       (if __pose_data (setq _pose_data (car __pose_data)))
       _pose_data)))
  (:multi_joint_data
   (&rest __multi_joint_data)
   (if (keywordp (car __multi_joint_data))
       (send* _multi_joint_data __multi_joint_data)
     (progn
       (if __multi_joint_data (setq _multi_joint_data (car __multi_joint_data)))
       _multi_joint_data)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_data
    (send _pose_data :serialization-length)
    ;; std_msgs/Float64MultiArray[] _multi_joint_data
    (apply #'+ (send-all _multi_joint_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_data
       (send _pose_data :serialize s)
     ;; std_msgs/Float64MultiArray[] _multi_joint_data
     (write-long (length _multi_joint_data) s)
     (dolist (elem _multi_joint_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_data
     (send _pose_data :deserialize buf ptr-) (incf ptr- (send _pose_data :serialization-length))
   ;; std_msgs/Float64MultiArray[] _multi_joint_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _multi_joint_data (let (r) (dotimes (i n) (push (instance std_msgs::Float64MultiArray :init) r)) r))
     (dolist (elem- _multi_joint_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dg_msgs::TrainDataSet :md5sum-) "0179900f3f8016e986c0aef3dd737f34")
(setf (get dg_msgs::TrainDataSet :datatype-) "dg_msgs/TrainDataSet")
(setf (get dg_msgs::TrainDataSet :definition-)
      "geometry_msgs/Pose pose_data
std_msgs/Float64MultiArray[] multi_joint_data
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
")



(provide :dg_msgs/TrainDataSet "0179900f3f8016e986c0aef3dd737f34")


