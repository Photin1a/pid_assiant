;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::PcdRegistration)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'PcdRegistration (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::PCDREGISTRATION")
  (make-package "DG_MSGS::PCDREGISTRATION"))
(unless (find-package "DG_MSGS::PCDREGISTRATIONREQUEST")
  (make-package "DG_MSGS::PCDREGISTRATIONREQUEST"))
(unless (find-package "DG_MSGS::PCDREGISTRATIONRESPONSE")
  (make-package "DG_MSGS::PCDREGISTRATIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::PcdRegistrationRequest
  :super ros::object
  :slots (_data_collect _topic_lidar _collection_frames _path_source _path_target _pcd_target _statistical_filter_source _statistical_filter_target _use_fpfh _crop _cropbox_source _cropbox_target _init_pose ))

(defmethod dg_msgs::PcdRegistrationRequest
  (:init
   (&key
    ((:data_collect __data_collect) 0)
    ((:topic_lidar __topic_lidar) "")
    ((:collection_frames __collection_frames) 0)
    ((:path_source __path_source) "")
    ((:path_target __path_target) "")
    ((:pcd_target __pcd_target) (instance sensor_msgs::PointCloud2 :init))
    ((:statistical_filter_source __statistical_filter_source) nil)
    ((:statistical_filter_target __statistical_filter_target) nil)
    ((:use_fpfh __use_fpfh) nil)
    ((:crop __crop) nil)
    ((:cropbox_source __cropbox_source) (instance dg_msgs::CropBox :init))
    ((:cropbox_target __cropbox_target) (instance dg_msgs::CropBox :init))
    ((:init_pose __init_pose) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _data_collect (round __data_collect))
   (setq _topic_lidar (string __topic_lidar))
   (setq _collection_frames (round __collection_frames))
   (setq _path_source (string __path_source))
   (setq _path_target (string __path_target))
   (setq _pcd_target __pcd_target)
   (setq _statistical_filter_source __statistical_filter_source)
   (setq _statistical_filter_target __statistical_filter_target)
   (setq _use_fpfh __use_fpfh)
   (setq _crop __crop)
   (setq _cropbox_source __cropbox_source)
   (setq _cropbox_target __cropbox_target)
   (setq _init_pose __init_pose)
   self)
  (:data_collect
   (&optional __data_collect)
   (if __data_collect (setq _data_collect __data_collect)) _data_collect)
  (:topic_lidar
   (&optional __topic_lidar)
   (if __topic_lidar (setq _topic_lidar __topic_lidar)) _topic_lidar)
  (:collection_frames
   (&optional __collection_frames)
   (if __collection_frames (setq _collection_frames __collection_frames)) _collection_frames)
  (:path_source
   (&optional __path_source)
   (if __path_source (setq _path_source __path_source)) _path_source)
  (:path_target
   (&optional __path_target)
   (if __path_target (setq _path_target __path_target)) _path_target)
  (:pcd_target
   (&rest __pcd_target)
   (if (keywordp (car __pcd_target))
       (send* _pcd_target __pcd_target)
     (progn
       (if __pcd_target (setq _pcd_target (car __pcd_target)))
       _pcd_target)))
  (:statistical_filter_source
   (&optional __statistical_filter_source)
   (if __statistical_filter_source (setq _statistical_filter_source __statistical_filter_source)) _statistical_filter_source)
  (:statistical_filter_target
   (&optional __statistical_filter_target)
   (if __statistical_filter_target (setq _statistical_filter_target __statistical_filter_target)) _statistical_filter_target)
  (:use_fpfh
   (&optional __use_fpfh)
   (if __use_fpfh (setq _use_fpfh __use_fpfh)) _use_fpfh)
  (:crop
   (&optional __crop)
   (if __crop (setq _crop __crop)) _crop)
  (:cropbox_source
   (&rest __cropbox_source)
   (if (keywordp (car __cropbox_source))
       (send* _cropbox_source __cropbox_source)
     (progn
       (if __cropbox_source (setq _cropbox_source (car __cropbox_source)))
       _cropbox_source)))
  (:cropbox_target
   (&rest __cropbox_target)
   (if (keywordp (car __cropbox_target))
       (send* _cropbox_target __cropbox_target)
     (progn
       (if __cropbox_target (setq _cropbox_target (car __cropbox_target)))
       _cropbox_target)))
  (:init_pose
   (&rest __init_pose)
   (if (keywordp (car __init_pose))
       (send* _init_pose __init_pose)
     (progn
       (if __init_pose (setq _init_pose (car __init_pose)))
       _init_pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _data_collect
    4
    ;; string _topic_lidar
    4 (length _topic_lidar)
    ;; int32 _collection_frames
    4
    ;; string _path_source
    4 (length _path_source)
    ;; string _path_target
    4 (length _path_target)
    ;; sensor_msgs/PointCloud2 _pcd_target
    (send _pcd_target :serialization-length)
    ;; bool _statistical_filter_source
    1
    ;; bool _statistical_filter_target
    1
    ;; bool _use_fpfh
    1
    ;; bool _crop
    1
    ;; dg_msgs/CropBox _cropbox_source
    (send _cropbox_source :serialization-length)
    ;; dg_msgs/CropBox _cropbox_target
    (send _cropbox_target :serialization-length)
    ;; geometry_msgs/Transform _init_pose
    (send _init_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data_collect
       (write-long _data_collect s)
     ;; string _topic_lidar
       (write-long (length _topic_lidar) s) (princ _topic_lidar s)
     ;; int32 _collection_frames
       (write-long _collection_frames s)
     ;; string _path_source
       (write-long (length _path_source) s) (princ _path_source s)
     ;; string _path_target
       (write-long (length _path_target) s) (princ _path_target s)
     ;; sensor_msgs/PointCloud2 _pcd_target
       (send _pcd_target :serialize s)
     ;; bool _statistical_filter_source
       (if _statistical_filter_source (write-byte -1 s) (write-byte 0 s))
     ;; bool _statistical_filter_target
       (if _statistical_filter_target (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_fpfh
       (if _use_fpfh (write-byte -1 s) (write-byte 0 s))
     ;; bool _crop
       (if _crop (write-byte -1 s) (write-byte 0 s))
     ;; dg_msgs/CropBox _cropbox_source
       (send _cropbox_source :serialize s)
     ;; dg_msgs/CropBox _cropbox_target
       (send _cropbox_target :serialize s)
     ;; geometry_msgs/Transform _init_pose
       (send _init_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data_collect
     (setq _data_collect (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _topic_lidar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_lidar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _collection_frames
     (setq _collection_frames (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _path_source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _path_target
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path_target (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/PointCloud2 _pcd_target
     (send _pcd_target :deserialize buf ptr-) (incf ptr- (send _pcd_target :serialization-length))
   ;; bool _statistical_filter_source
     (setq _statistical_filter_source (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _statistical_filter_target
     (setq _statistical_filter_target (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_fpfh
     (setq _use_fpfh (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _crop
     (setq _crop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; dg_msgs/CropBox _cropbox_source
     (send _cropbox_source :deserialize buf ptr-) (incf ptr- (send _cropbox_source :serialization-length))
   ;; dg_msgs/CropBox _cropbox_target
     (send _cropbox_target :deserialize buf ptr-) (incf ptr- (send _cropbox_target :serialization-length))
   ;; geometry_msgs/Transform _init_pose
     (send _init_pose :deserialize buf ptr-) (incf ptr- (send _init_pose :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::PcdRegistrationResponse
  :super ros::object
  :slots (_transform _state_info ))

(defmethod dg_msgs::PcdRegistrationResponse
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _transform __transform)
   (setq _state_info __state_info)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:state_info
   (&rest __state_info)
   (if (keywordp (car __state_info))
       (send* _state_info __state_info)
     (progn
       (if __state_info (setq _state_info (car __state_info)))
       _state_info)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::PcdRegistration
  :super ros::object
  :slots ())

(setf (get dg_msgs::PcdRegistration :md5sum-) "5bd0e2fcf9944d063d5fa39205fff5d3")
(setf (get dg_msgs::PcdRegistration :datatype-) "dg_msgs/PcdRegistration")
(setf (get dg_msgs::PcdRegistration :request) dg_msgs::PcdRegistrationRequest)
(setf (get dg_msgs::PcdRegistration :response) dg_msgs::PcdRegistrationResponse)

(defmethod dg_msgs::PcdRegistrationRequest
  (:response () (instance dg_msgs::PcdRegistrationResponse :init)))

(setf (get dg_msgs::PcdRegistrationRequest :md5sum-) "5bd0e2fcf9944d063d5fa39205fff5d3")
(setf (get dg_msgs::PcdRegistrationRequest :datatype-) "dg_msgs/PcdRegistrationRequest")
(setf (get dg_msgs::PcdRegistrationRequest :definition-)
      "int32 data_collect
string topic_lidar
int32 collection_frames
string path_source
string path_target
sensor_msgs/PointCloud2 pcd_target
bool statistical_filter_source
bool statistical_filter_target
bool use_fpfh
bool crop
CropBox cropbox_source
CropBox cropbox_target
geometry_msgs/Transform init_pose


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: dg_msgs/CropBox
float32[] center_
float32[] R_euler
float32[] extent_
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
# bool result_registration
# string status_info
geometry_msgs/Transform transform
UniversalStateInfo  state_info # state_index: 0 配准成功 1 配准失败 2 读取target点云文件失败 3 读取source点云文件失败 4 从激光雷达获取点云失败 5 从相机获取点云失败

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::PcdRegistrationResponse :md5sum-) "5bd0e2fcf9944d063d5fa39205fff5d3")
(setf (get dg_msgs::PcdRegistrationResponse :datatype-) "dg_msgs/PcdRegistrationResponse")
(setf (get dg_msgs::PcdRegistrationResponse :definition-)
      "int32 data_collect
string topic_lidar
int32 collection_frames
string path_source
string path_target
sensor_msgs/PointCloud2 pcd_target
bool statistical_filter_source
bool statistical_filter_target
bool use_fpfh
bool crop
CropBox cropbox_source
CropBox cropbox_target
geometry_msgs/Transform init_pose


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: dg_msgs/CropBox
float32[] center_
float32[] R_euler
float32[] extent_
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
# bool result_registration
# string status_info
geometry_msgs/Transform transform
UniversalStateInfo  state_info # state_index: 0 配准成功 1 配准失败 2 读取target点云文件失败 3 读取source点云文件失败 4 从激光雷达获取点云失败 5 从相机获取点云失败

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

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
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/PcdRegistration "5bd0e2fcf9944d063d5fa39205fff5d3")


