;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::LidarDataCollect)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'LidarDataCollect (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::LIDARDATACOLLECT")
  (make-package "DG_MSGS::LIDARDATACOLLECT"))
(unless (find-package "DG_MSGS::LIDARDATACOLLECTREQUEST")
  (make-package "DG_MSGS::LIDARDATACOLLECTREQUEST"))
(unless (find-package "DG_MSGS::LIDARDATACOLLECTRESPONSE")
  (make-package "DG_MSGS::LIDARDATACOLLECTRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass dg_msgs::LidarDataCollectRequest
  :super ros::object
  :slots (_topic_lidar _collect_frames _data_type _save_path ))

(defmethod dg_msgs::LidarDataCollectRequest
  (:init
   (&key
    ((:topic_lidar __topic_lidar) "")
    ((:collect_frames __collect_frames) 0)
    ((:data_type __data_type) nil)
    ((:save_path __save_path) "")
    )
   (send-super :init)
   (setq _topic_lidar (string __topic_lidar))
   (setq _collect_frames (round __collect_frames))
   (setq _data_type __data_type)
   (setq _save_path (string __save_path))
   self)
  (:topic_lidar
   (&optional __topic_lidar)
   (if __topic_lidar (setq _topic_lidar __topic_lidar)) _topic_lidar)
  (:collect_frames
   (&optional __collect_frames)
   (if __collect_frames (setq _collect_frames __collect_frames)) _collect_frames)
  (:data_type
   (&optional __data_type)
   (if __data_type (setq _data_type __data_type)) _data_type)
  (:save_path
   (&optional __save_path)
   (if __save_path (setq _save_path __save_path)) _save_path)
  (:serialization-length
   ()
   (+
    ;; string _topic_lidar
    4 (length _topic_lidar)
    ;; int32 _collect_frames
    4
    ;; bool _data_type
    1
    ;; string _save_path
    4 (length _save_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_lidar
       (write-long (length _topic_lidar) s) (princ _topic_lidar s)
     ;; int32 _collect_frames
       (write-long _collect_frames s)
     ;; bool _data_type
       (if _data_type (write-byte -1 s) (write-byte 0 s))
     ;; string _save_path
       (write-long (length _save_path) s) (princ _save_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_lidar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_lidar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _collect_frames
     (setq _collect_frames (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _data_type
     (setq _data_type (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _save_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _save_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::LidarDataCollectResponse
  :super ros::object
  :slots (_pcd_collect _state_info ))

(defmethod dg_msgs::LidarDataCollectResponse
  (:init
   (&key
    ((:pcd_collect __pcd_collect) (instance sensor_msgs::PointCloud2 :init))
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _pcd_collect __pcd_collect)
   (setq _state_info __state_info)
   self)
  (:pcd_collect
   (&rest __pcd_collect)
   (if (keywordp (car __pcd_collect))
       (send* _pcd_collect __pcd_collect)
     (progn
       (if __pcd_collect (setq _pcd_collect (car __pcd_collect)))
       _pcd_collect)))
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
    ;; sensor_msgs/PointCloud2 _pcd_collect
    (send _pcd_collect :serialization-length)
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _pcd_collect
       (send _pcd_collect :serialize s)
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _pcd_collect
     (send _pcd_collect :deserialize buf ptr-) (incf ptr- (send _pcd_collect :serialization-length))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::LidarDataCollect
  :super ros::object
  :slots ())

(setf (get dg_msgs::LidarDataCollect :md5sum-) "590a098be25ae6967e808f039349d40f")
(setf (get dg_msgs::LidarDataCollect :datatype-) "dg_msgs/LidarDataCollect")
(setf (get dg_msgs::LidarDataCollect :request) dg_msgs::LidarDataCollectRequest)
(setf (get dg_msgs::LidarDataCollect :response) dg_msgs::LidarDataCollectResponse)

(defmethod dg_msgs::LidarDataCollectRequest
  (:response () (instance dg_msgs::LidarDataCollectResponse :init)))

(setf (get dg_msgs::LidarDataCollectRequest :md5sum-) "590a098be25ae6967e808f039349d40f")
(setf (get dg_msgs::LidarDataCollectRequest :datatype-) "dg_msgs/LidarDataCollectRequest")
(setf (get dg_msgs::LidarDataCollectRequest :definition-)
      "string topic_lidar # 雷达话题名
int32 collect_frames # 需要采集的帧数
bool data_type # 雷达数据类型: 0: 默认livox CustomMsg, 1: ros pcd2
string save_path # 保存路径
---
sensor_msgs/PointCloud2  pcd_collect # 返回采集的点云
UniversalStateInfo  state_info # 返回采集状态信息

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
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::LidarDataCollectResponse :md5sum-) "590a098be25ae6967e808f039349d40f")
(setf (get dg_msgs::LidarDataCollectResponse :datatype-) "dg_msgs/LidarDataCollectResponse")
(setf (get dg_msgs::LidarDataCollectResponse :definition-)
      "string topic_lidar # 雷达话题名
int32 collect_frames # 需要采集的帧数
bool data_type # 雷达数据类型: 0: 默认livox CustomMsg, 1: ros pcd2
string save_path # 保存路径
---
sensor_msgs/PointCloud2  pcd_collect # 返回采集的点云
UniversalStateInfo  state_info # 返回采集状态信息

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
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/LidarDataCollect "590a098be25ae6967e808f039349d40f")


