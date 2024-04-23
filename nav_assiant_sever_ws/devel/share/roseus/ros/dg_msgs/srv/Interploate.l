;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::Interploate)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'Interploate (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::INTERPLOATE")
  (make-package "DG_MSGS::INTERPLOATE"))
(unless (find-package "DG_MSGS::INTERPLOATEREQUEST")
  (make-package "DG_MSGS::INTERPLOATEREQUEST"))
(unless (find-package "DG_MSGS::INTERPLOATERESPONSE")
  (make-package "DG_MSGS::INTERPLOATERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass dg_msgs::InterploateRequest
  :super ros::object
  :slots (_pose_camera_baselink _lift_data _filename ))

(defmethod dg_msgs::InterploateRequest
  (:init
   (&key
    ((:pose_camera_baselink __pose_camera_baselink) (instance geometry_msgs::Pose :init))
    ((:lift_data __lift_data) 0.0)
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _pose_camera_baselink __pose_camera_baselink)
   (setq _lift_data (float __lift_data))
   (setq _filename (string __filename))
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
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_camera_baselink
    (send _pose_camera_baselink :serialization-length)
    ;; float64 _lift_data
    8
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_camera_baselink
       (send _pose_camera_baselink :serialize s)
     ;; float64 _lift_data
       (sys::poke _lift_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_camera_baselink
     (send _pose_camera_baselink :deserialize buf ptr-) (incf ptr- (send _pose_camera_baselink :serialization-length))
   ;; float64 _lift_data
     (setq _lift_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::InterploateResponse
  :super ros::object
  :slots (_pose_dataset_array ))

(defmethod dg_msgs::InterploateResponse
  (:init
   (&key
    ((:pose_dataset_array __pose_dataset_array) (let (r) (dotimes (i 0) (push (instance dg_msgs::TrainDataSet :init) r)) r))
    )
   (send-super :init)
   (setq _pose_dataset_array __pose_dataset_array)
   self)
  (:pose_dataset_array
   (&rest __pose_dataset_array)
   (if (keywordp (car __pose_dataset_array))
       (send* _pose_dataset_array __pose_dataset_array)
     (progn
       (if __pose_dataset_array (setq _pose_dataset_array (car __pose_dataset_array)))
       _pose_dataset_array)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/TrainDataSet[] _pose_dataset_array
    (apply #'+ (send-all _pose_dataset_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/TrainDataSet[] _pose_dataset_array
     (write-long (length _pose_dataset_array) s)
     (dolist (elem _pose_dataset_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/TrainDataSet[] _pose_dataset_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_dataset_array (let (r) (dotimes (i n) (push (instance dg_msgs::TrainDataSet :init) r)) r))
     (dolist (elem- _pose_dataset_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dg_msgs::Interploate
  :super ros::object
  :slots ())

(setf (get dg_msgs::Interploate :md5sum-) "20ebdb9296a7b10c1ea97741e338b7bb")
(setf (get dg_msgs::Interploate :datatype-) "dg_msgs/Interploate")
(setf (get dg_msgs::Interploate :request) dg_msgs::InterploateRequest)
(setf (get dg_msgs::Interploate :response) dg_msgs::InterploateResponse)

(defmethod dg_msgs::InterploateRequest
  (:response () (instance dg_msgs::InterploateResponse :init)))

(setf (get dg_msgs::InterploateRequest :md5sum-) "20ebdb9296a7b10c1ea97741e338b7bb")
(setf (get dg_msgs::InterploateRequest :datatype-) "dg_msgs/InterploateRequest")
(setf (get dg_msgs::InterploateRequest :definition-)
      "geometry_msgs/Pose              pose_camera_baselink
float64                         lift_data       
string                          filename

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
---
TrainDataSet[]                  pose_dataset_array

================================================================================
MSG: dg_msgs/TrainDataSet
geometry_msgs/Pose pose_data
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
")

(setf (get dg_msgs::InterploateResponse :md5sum-) "20ebdb9296a7b10c1ea97741e338b7bb")
(setf (get dg_msgs::InterploateResponse :datatype-) "dg_msgs/InterploateResponse")
(setf (get dg_msgs::InterploateResponse :definition-)
      "geometry_msgs/Pose              pose_camera_baselink
float64                         lift_data       
string                          filename

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
---
TrainDataSet[]                  pose_dataset_array

================================================================================
MSG: dg_msgs/TrainDataSet
geometry_msgs/Pose pose_data
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
")



(provide :dg_msgs/Interploate "20ebdb9296a7b10c1ea97741e338b7bb")


