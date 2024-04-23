;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::AlterPoseAndJoints)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'AlterPoseAndJoints (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ALTERPOSEANDJOINTS")
  (make-package "DG_MSGS::ALTERPOSEANDJOINTS"))

(in-package "ROS")
;;//! \htmlinclude AlterPoseAndJoints.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dg_msgs::AlterPoseAndJoints
  :super ros::object
  :slots (_pose_camera_baselink _lift_data _multi_joint_data ))

(defmethod dg_msgs::AlterPoseAndJoints
  (:init
   (&key
    ((:pose_camera_baselink __pose_camera_baselink) (instance geometry_msgs::Pose :init))
    ((:lift_data __lift_data) 0.0)
    ((:multi_joint_data __multi_joint_data) (let (r) (dotimes (i 0) (push (instance std_msgs::Float64MultiArray :init) r)) r))
    )
   (send-super :init)
   (setq _pose_camera_baselink __pose_camera_baselink)
   (setq _lift_data (float __lift_data))
   (setq _multi_joint_data __multi_joint_data)
   self)
  (:pose_camera_baselink
   (&rest __pose_camera_baselink)
   (if (keywordp (car __pose_camera_baselink))
       (send* _pose_camera_baselink __pose_camera_baselink)
     (progn
       (if __pose_camera_baselink (setq _pose_camera_baselink (car __pose_camera_baselink)))
       _pose_camera_baselink)))
  (:lift_data
   (&optional __lift_data)
   (if __lift_data (setq _lift_data __lift_data)) _lift_data)
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
    ;; geometry_msgs/Pose _pose_camera_baselink
    (send _pose_camera_baselink :serialization-length)
    ;; float64 _lift_data
    8
    ;; std_msgs/Float64MultiArray[] _multi_joint_data
    (apply #'+ (send-all _multi_joint_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_camera_baselink
       (send _pose_camera_baselink :serialize s)
     ;; float64 _lift_data
       (sys::poke _lift_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/Float64MultiArray[] _multi_joint_data
     (write-long (length _multi_joint_data) s)
     (dolist (elem _multi_joint_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_camera_baselink
     (send _pose_camera_baselink :deserialize buf ptr-) (incf ptr- (send _pose_camera_baselink :serialization-length))
   ;; float64 _lift_data
     (setq _lift_data (sys::peek buf ptr- :double)) (incf ptr- 8)
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

(setf (get dg_msgs::AlterPoseAndJoints :md5sum-) "75086b199a46d8b9befd0814b42dd3a1")
(setf (get dg_msgs::AlterPoseAndJoints :datatype-) "dg_msgs/AlterPoseAndJoints")
(setf (get dg_msgs::AlterPoseAndJoints :definition-)
      "geometry_msgs/Pose pose_camera_baselink
float64 lift_data
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



(provide :dg_msgs/AlterPoseAndJoints "75086b199a46d8b9befd0814b42dd3a1")


