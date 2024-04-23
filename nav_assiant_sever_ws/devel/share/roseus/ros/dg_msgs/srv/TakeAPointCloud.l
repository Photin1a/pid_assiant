;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TakeAPointCloud)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TakeAPointCloud (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TAKEAPOINTCLOUD")
  (make-package "DG_MSGS::TAKEAPOINTCLOUD"))
(unless (find-package "DG_MSGS::TAKEAPOINTCLOUDREQUEST")
  (make-package "DG_MSGS::TAKEAPOINTCLOUDREQUEST"))
(unless (find-package "DG_MSGS::TAKEAPOINTCLOUDRESPONSE")
  (make-package "DG_MSGS::TAKEAPOINTCLOUDRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass dg_msgs::TakeAPointCloudRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::TakeAPointCloudRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dg_msgs::TakeAPointCloudResponse
  :super ros::object
  :slots (_PointCloud ))

(defmethod dg_msgs::TakeAPointCloudResponse
  (:init
   (&key
    ((:PointCloud __PointCloud) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _PointCloud __PointCloud)
   self)
  (:PointCloud
   (&rest __PointCloud)
   (if (keywordp (car __PointCloud))
       (send* _PointCloud __PointCloud)
     (progn
       (if __PointCloud (setq _PointCloud (car __PointCloud)))
       _PointCloud)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _PointCloud
    (send _PointCloud :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _PointCloud
       (send _PointCloud :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _PointCloud
     (send _PointCloud :deserialize buf ptr-) (incf ptr- (send _PointCloud :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::TakeAPointCloud
  :super ros::object
  :slots ())

(setf (get dg_msgs::TakeAPointCloud :md5sum-) "62cbe1cfe333a66132a02f178e9a8274")
(setf (get dg_msgs::TakeAPointCloud :datatype-) "dg_msgs/TakeAPointCloud")
(setf (get dg_msgs::TakeAPointCloud :request) dg_msgs::TakeAPointCloudRequest)
(setf (get dg_msgs::TakeAPointCloud :response) dg_msgs::TakeAPointCloudResponse)

(defmethod dg_msgs::TakeAPointCloudRequest
  (:response () (instance dg_msgs::TakeAPointCloudResponse :init)))

(setf (get dg_msgs::TakeAPointCloudRequest :md5sum-) "62cbe1cfe333a66132a02f178e9a8274")
(setf (get dg_msgs::TakeAPointCloudRequest :datatype-) "dg_msgs/TakeAPointCloudRequest")
(setf (get dg_msgs::TakeAPointCloudRequest :definition-)
      "
---
sensor_msgs/PointCloud2 PointCloud

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
")

(setf (get dg_msgs::TakeAPointCloudResponse :md5sum-) "62cbe1cfe333a66132a02f178e9a8274")
(setf (get dg_msgs::TakeAPointCloudResponse :datatype-) "dg_msgs/TakeAPointCloudResponse")
(setf (get dg_msgs::TakeAPointCloudResponse :definition-)
      "
---
sensor_msgs/PointCloud2 PointCloud

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
")



(provide :dg_msgs/TakeAPointCloud "62cbe1cfe333a66132a02f178e9a8274")


