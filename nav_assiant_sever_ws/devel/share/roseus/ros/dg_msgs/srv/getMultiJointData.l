;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::getMultiJointData)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'getMultiJointData (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GETMULTIJOINTDATA")
  (make-package "DG_MSGS::GETMULTIJOINTDATA"))
(unless (find-package "DG_MSGS::GETMULTIJOINTDATAREQUEST")
  (make-package "DG_MSGS::GETMULTIJOINTDATAREQUEST"))
(unless (find-package "DG_MSGS::GETMULTIJOINTDATARESPONSE")
  (make-package "DG_MSGS::GETMULTIJOINTDATARESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dg_msgs::getMultiJointDataRequest
  :super ros::object
  :slots (_pose_camera_baselink _joint_data _is_checkself_collision _is_env_collision ))

(defmethod dg_msgs::getMultiJointDataRequest
  (:init
   (&key
    ((:pose_camera_baselink __pose_camera_baselink) (instance geometry_msgs::Pose :init))
    ((:joint_data __joint_data) (instance std_msgs::Float64MultiArray :init))
    ((:is_checkself_collision __is_checkself_collision) nil)
    ((:is_env_collision __is_env_collision) nil)
    )
   (send-super :init)
   (setq _pose_camera_baselink __pose_camera_baselink)
   (setq _joint_data __joint_data)
   (setq _is_checkself_collision __is_checkself_collision)
   (setq _is_env_collision __is_env_collision)
   self)
  (:pose_camera_baselink
   (&rest __pose_camera_baselink)
   (if (keywordp (car __pose_camera_baselink))
       (send* _pose_camera_baselink __pose_camera_baselink)
     (progn
       (if __pose_camera_baselink (setq _pose_camera_baselink (car __pose_camera_baselink)))
       _pose_camera_baselink)))
  (:joint_data
   (&rest __joint_data)
   (if (keywordp (car __joint_data))
       (send* _joint_data __joint_data)
     (progn
       (if __joint_data (setq _joint_data (car __joint_data)))
       _joint_data)))
  (:is_checkself_collision
   (&optional __is_checkself_collision)
   (if __is_checkself_collision (setq _is_checkself_collision __is_checkself_collision)) _is_checkself_collision)
  (:is_env_collision
   (&optional __is_env_collision)
   (if __is_env_collision (setq _is_env_collision __is_env_collision)) _is_env_collision)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_camera_baselink
    (send _pose_camera_baselink :serialization-length)
    ;; std_msgs/Float64MultiArray _joint_data
    (send _joint_data :serialization-length)
    ;; bool _is_checkself_collision
    1
    ;; bool _is_env_collision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_camera_baselink
       (send _pose_camera_baselink :serialize s)
     ;; std_msgs/Float64MultiArray _joint_data
       (send _joint_data :serialize s)
     ;; bool _is_checkself_collision
       (if _is_checkself_collision (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_env_collision
       (if _is_env_collision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_camera_baselink
     (send _pose_camera_baselink :deserialize buf ptr-) (incf ptr- (send _pose_camera_baselink :serialization-length))
   ;; std_msgs/Float64MultiArray _joint_data
     (send _joint_data :deserialize buf ptr-) (incf ptr- (send _joint_data :serialization-length))
   ;; bool _is_checkself_collision
     (setq _is_checkself_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_env_collision
     (setq _is_env_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::getMultiJointDataResponse
  :super ros::object
  :slots (_multi_joint_data ))

(defmethod dg_msgs::getMultiJointDataResponse
  (:init
   (&key
    ((:multi_joint_data __multi_joint_data) (let (r) (dotimes (i 0) (push (instance std_msgs::Float64MultiArray :init) r)) r))
    )
   (send-super :init)
   (setq _multi_joint_data __multi_joint_data)
   self)
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
    ;; std_msgs/Float64MultiArray[] _multi_joint_data
    (apply #'+ (send-all _multi_joint_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray[] _multi_joint_data
     (write-long (length _multi_joint_data) s)
     (dolist (elem _multi_joint_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(defclass dg_msgs::getMultiJointData
  :super ros::object
  :slots ())

(setf (get dg_msgs::getMultiJointData :md5sum-) "41a9011d770649a5881591be09a91dc1")
(setf (get dg_msgs::getMultiJointData :datatype-) "dg_msgs/getMultiJointData")
(setf (get dg_msgs::getMultiJointData :request) dg_msgs::getMultiJointDataRequest)
(setf (get dg_msgs::getMultiJointData :response) dg_msgs::getMultiJointDataResponse)

(defmethod dg_msgs::getMultiJointDataRequest
  (:response () (instance dg_msgs::getMultiJointDataResponse :init)))

(setf (get dg_msgs::getMultiJointDataRequest :md5sum-) "41a9011d770649a5881591be09a91dc1")
(setf (get dg_msgs::getMultiJointDataRequest :datatype-) "dg_msgs/getMultiJointDataRequest")
(setf (get dg_msgs::getMultiJointDataRequest :definition-)
      "geometry_msgs/Pose pose_camera_baselink
std_msgs/Float64MultiArray joint_data
bool is_checkself_collision
bool is_env_collision

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
---
std_msgs/Float64MultiArray[] multi_joint_data

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

(setf (get dg_msgs::getMultiJointDataResponse :md5sum-) "41a9011d770649a5881591be09a91dc1")
(setf (get dg_msgs::getMultiJointDataResponse :datatype-) "dg_msgs/getMultiJointDataResponse")
(setf (get dg_msgs::getMultiJointDataResponse :definition-)
      "geometry_msgs/Pose pose_camera_baselink
std_msgs/Float64MultiArray joint_data
bool is_checkself_collision
bool is_env_collision

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
---
std_msgs/Float64MultiArray[] multi_joint_data

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



(provide :dg_msgs/getMultiJointData "41a9011d770649a5881591be09a91dc1")


