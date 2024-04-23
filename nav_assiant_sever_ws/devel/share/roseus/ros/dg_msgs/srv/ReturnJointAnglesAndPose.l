;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ReturnJointAnglesAndPose)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ReturnJointAnglesAndPose (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::RETURNJOINTANGLESANDPOSE")
  (make-package "DG_MSGS::RETURNJOINTANGLESANDPOSE"))
(unless (find-package "DG_MSGS::RETURNJOINTANGLESANDPOSEREQUEST")
  (make-package "DG_MSGS::RETURNJOINTANGLESANDPOSEREQUEST"))
(unless (find-package "DG_MSGS::RETURNJOINTANGLESANDPOSERESPONSE")
  (make-package "DG_MSGS::RETURNJOINTANGLESANDPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass dg_msgs::ReturnJointAnglesAndPoseRequest
  :super ros::object
  :slots (_pose_camera_baselink _file_path _alter_count _error_data ))

(defmethod dg_msgs::ReturnJointAnglesAndPoseRequest
  (:init
   (&key
    ((:pose_camera_baselink __pose_camera_baselink) (instance geometry_msgs::Pose :init))
    ((:file_path __file_path) "")
    ((:alter_count __alter_count) 0)
    ((:error_data __error_data) 0.0)
    )
   (send-super :init)
   (setq _pose_camera_baselink __pose_camera_baselink)
   (setq _file_path (string __file_path))
   (setq _alter_count (round __alter_count))
   (setq _error_data (float __error_data))
   self)
  (:pose_camera_baselink
   (&rest __pose_camera_baselink)
   (if (keywordp (car __pose_camera_baselink))
       (send* _pose_camera_baselink __pose_camera_baselink)
     (progn
       (if __pose_camera_baselink (setq _pose_camera_baselink (car __pose_camera_baselink)))
       _pose_camera_baselink)))
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:alter_count
   (&optional __alter_count)
   (if __alter_count (setq _alter_count __alter_count)) _alter_count)
  (:error_data
   (&optional __error_data)
   (if __error_data (setq _error_data __error_data)) _error_data)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_camera_baselink
    (send _pose_camera_baselink :serialization-length)
    ;; string _file_path
    4 (length _file_path)
    ;; int32 _alter_count
    4
    ;; float64 _error_data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_camera_baselink
       (send _pose_camera_baselink :serialize s)
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; int32 _alter_count
       (write-long _alter_count s)
     ;; float64 _error_data
       (sys::poke _error_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_camera_baselink
     (send _pose_camera_baselink :deserialize buf ptr-) (incf ptr- (send _pose_camera_baselink :serialization-length))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _alter_count
     (setq _alter_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _error_data
     (setq _error_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dg_msgs::ReturnJointAnglesAndPoseResponse
  :super ros::object
  :slots (_pose_ret ))

(defmethod dg_msgs::ReturnJointAnglesAndPoseResponse
  (:init
   (&key
    ((:pose_ret __pose_ret) (let (r) (dotimes (i 0) (push (instance dg_msgs::TrainDataSet :init) r)) r))
    )
   (send-super :init)
   (setq _pose_ret __pose_ret)
   self)
  (:pose_ret
   (&rest __pose_ret)
   (if (keywordp (car __pose_ret))
       (send* _pose_ret __pose_ret)
     (progn
       (if __pose_ret (setq _pose_ret (car __pose_ret)))
       _pose_ret)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/TrainDataSet[] _pose_ret
    (apply #'+ (send-all _pose_ret :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/TrainDataSet[] _pose_ret
     (write-long (length _pose_ret) s)
     (dolist (elem _pose_ret)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/TrainDataSet[] _pose_ret
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_ret (let (r) (dotimes (i n) (push (instance dg_msgs::TrainDataSet :init) r)) r))
     (dolist (elem- _pose_ret)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dg_msgs::ReturnJointAnglesAndPose
  :super ros::object
  :slots ())

(setf (get dg_msgs::ReturnJointAnglesAndPose :md5sum-) "68f8701d655359a5b226e67fe93ab112")
(setf (get dg_msgs::ReturnJointAnglesAndPose :datatype-) "dg_msgs/ReturnJointAnglesAndPose")
(setf (get dg_msgs::ReturnJointAnglesAndPose :request) dg_msgs::ReturnJointAnglesAndPoseRequest)
(setf (get dg_msgs::ReturnJointAnglesAndPose :response) dg_msgs::ReturnJointAnglesAndPoseResponse)

(defmethod dg_msgs::ReturnJointAnglesAndPoseRequest
  (:response () (instance dg_msgs::ReturnJointAnglesAndPoseResponse :init)))

(setf (get dg_msgs::ReturnJointAnglesAndPoseRequest :md5sum-) "68f8701d655359a5b226e67fe93ab112")
(setf (get dg_msgs::ReturnJointAnglesAndPoseRequest :datatype-) "dg_msgs/ReturnJointAnglesAndPoseRequest")
(setf (get dg_msgs::ReturnJointAnglesAndPoseRequest :definition-)
      "geometry_msgs/Pose pose_camera_baselink
string file_path
int32 alter_count #邻近点返回数量
float64 error_data #误差范围

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
TrainDataSet[] pose_ret

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

(setf (get dg_msgs::ReturnJointAnglesAndPoseResponse :md5sum-) "68f8701d655359a5b226e67fe93ab112")
(setf (get dg_msgs::ReturnJointAnglesAndPoseResponse :datatype-) "dg_msgs/ReturnJointAnglesAndPoseResponse")
(setf (get dg_msgs::ReturnJointAnglesAndPoseResponse :definition-)
      "geometry_msgs/Pose pose_camera_baselink
string file_path
int32 alter_count #邻近点返回数量
float64 error_data #误差范围

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
TrainDataSet[] pose_ret

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



(provide :dg_msgs/ReturnJointAnglesAndPose "68f8701d655359a5b226e67fe93ab112")


