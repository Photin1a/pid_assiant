;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::potential_cloud)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'potential_cloud (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::POTENTIAL_CLOUD")
  (make-package "DG_MSGS::POTENTIAL_CLOUD"))
(unless (find-package "DG_MSGS::POTENTIAL_CLOUDREQUEST")
  (make-package "DG_MSGS::POTENTIAL_CLOUDREQUEST"))
(unless (find-package "DG_MSGS::POTENTIAL_CLOUDRESPONSE")
  (make-package "DG_MSGS::POTENTIAL_CLOUDRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass dg_msgs::potential_cloudRequest
  :super ros::object
  :slots (_cloud_cmd ))

(defmethod dg_msgs::potential_cloudRequest
  (:init
   (&key
    ((:cloud_cmd __cloud_cmd) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _cloud_cmd __cloud_cmd)
   self)
  (:cloud_cmd
   (&rest __cloud_cmd)
   (if (keywordp (car __cloud_cmd))
       (send* _cloud_cmd __cloud_cmd)
     (progn
       (if __cloud_cmd (setq _cloud_cmd (car __cloud_cmd)))
       _cloud_cmd)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _cloud_cmd
    (send _cloud_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _cloud_cmd
       (send _cloud_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _cloud_cmd
     (send _cloud_cmd :deserialize buf ptr-) (incf ptr- (send _cloud_cmd :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::potential_cloudResponse
  :super ros::object
  :slots (_flag_cloud ))

(defmethod dg_msgs::potential_cloudResponse
  (:init
   (&key
    ((:flag_cloud __flag_cloud) 0)
    )
   (send-super :init)
   (setq _flag_cloud (round __flag_cloud))
   self)
  (:flag_cloud
   (&optional __flag_cloud)
   (if __flag_cloud (setq _flag_cloud __flag_cloud)) _flag_cloud)
  (:serialization-length
   ()
   (+
    ;; int8 _flag_cloud
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _flag_cloud
       (write-byte _flag_cloud s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _flag_cloud
     (setq _flag_cloud (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _flag_cloud 127) (setq _flag_cloud (- _flag_cloud 256)))
   ;;
   self)
  )

(defclass dg_msgs::potential_cloud
  :super ros::object
  :slots ())

(setf (get dg_msgs::potential_cloud :md5sum-) "73d2c4d627d9757c7b058b1b0296d8a7")
(setf (get dg_msgs::potential_cloud :datatype-) "dg_msgs/potential_cloud")
(setf (get dg_msgs::potential_cloud :request) dg_msgs::potential_cloudRequest)
(setf (get dg_msgs::potential_cloud :response) dg_msgs::potential_cloudResponse)

(defmethod dg_msgs::potential_cloudRequest
  (:response () (instance dg_msgs::potential_cloudResponse :init)))

(setf (get dg_msgs::potential_cloudRequest :md5sum-) "73d2c4d627d9757c7b058b1b0296d8a7")
(setf (get dg_msgs::potential_cloudRequest :datatype-) "dg_msgs/potential_cloudRequest")
(setf (get dg_msgs::potential_cloudRequest :definition-)
      "sensor_msgs/PointCloud2 cloud_cmd

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
---
int8 flag_cloud

")

(setf (get dg_msgs::potential_cloudResponse :md5sum-) "73d2c4d627d9757c7b058b1b0296d8a7")
(setf (get dg_msgs::potential_cloudResponse :datatype-) "dg_msgs/potential_cloudResponse")
(setf (get dg_msgs::potential_cloudResponse :definition-)
      "sensor_msgs/PointCloud2 cloud_cmd

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
---
int8 flag_cloud

")



(provide :dg_msgs/potential_cloud "73d2c4d627d9757c7b058b1b0296d8a7")


