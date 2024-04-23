; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude potential_cloud-request.msg.html

(cl:defclass <potential_cloud-request> (roslisp-msg-protocol:ros-message)
  ((cloud_cmd
    :reader cloud_cmd
    :initarg :cloud_cmd
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass potential_cloud-request (<potential_cloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <potential_cloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'potential_cloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<potential_cloud-request> is deprecated: use dg_msgs-srv:potential_cloud-request instead.")))

(cl:ensure-generic-function 'cloud_cmd-val :lambda-list '(m))
(cl:defmethod cloud_cmd-val ((m <potential_cloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:cloud_cmd-val is deprecated.  Use dg_msgs-srv:cloud_cmd instead.")
  (cloud_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <potential_cloud-request>) ostream)
  "Serializes a message object of type '<potential_cloud-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <potential_cloud-request>) istream)
  "Deserializes a message object of type '<potential_cloud-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<potential_cloud-request>)))
  "Returns string type for a service object of type '<potential_cloud-request>"
  "dg_msgs/potential_cloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'potential_cloud-request)))
  "Returns string type for a service object of type 'potential_cloud-request"
  "dg_msgs/potential_cloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<potential_cloud-request>)))
  "Returns md5sum for a message object of type '<potential_cloud-request>"
  "73d2c4d627d9757c7b058b1b0296d8a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'potential_cloud-request)))
  "Returns md5sum for a message object of type 'potential_cloud-request"
  "73d2c4d627d9757c7b058b1b0296d8a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<potential_cloud-request>)))
  "Returns full string definition for message of type '<potential_cloud-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud_cmd~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'potential_cloud-request)))
  "Returns full string definition for message of type 'potential_cloud-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud_cmd~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <potential_cloud-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <potential_cloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'potential_cloud-request
    (cl:cons ':cloud_cmd (cloud_cmd msg))
))
;//! \htmlinclude potential_cloud-response.msg.html

(cl:defclass <potential_cloud-response> (roslisp-msg-protocol:ros-message)
  ((flag_cloud
    :reader flag_cloud
    :initarg :flag_cloud
    :type cl:fixnum
    :initform 0))
)

(cl:defclass potential_cloud-response (<potential_cloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <potential_cloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'potential_cloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<potential_cloud-response> is deprecated: use dg_msgs-srv:potential_cloud-response instead.")))

(cl:ensure-generic-function 'flag_cloud-val :lambda-list '(m))
(cl:defmethod flag_cloud-val ((m <potential_cloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:flag_cloud-val is deprecated.  Use dg_msgs-srv:flag_cloud instead.")
  (flag_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <potential_cloud-response>) ostream)
  "Serializes a message object of type '<potential_cloud-response>"
  (cl:let* ((signed (cl:slot-value msg 'flag_cloud)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <potential_cloud-response>) istream)
  "Deserializes a message object of type '<potential_cloud-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag_cloud) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<potential_cloud-response>)))
  "Returns string type for a service object of type '<potential_cloud-response>"
  "dg_msgs/potential_cloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'potential_cloud-response)))
  "Returns string type for a service object of type 'potential_cloud-response"
  "dg_msgs/potential_cloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<potential_cloud-response>)))
  "Returns md5sum for a message object of type '<potential_cloud-response>"
  "73d2c4d627d9757c7b058b1b0296d8a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'potential_cloud-response)))
  "Returns md5sum for a message object of type 'potential_cloud-response"
  "73d2c4d627d9757c7b058b1b0296d8a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<potential_cloud-response>)))
  "Returns full string definition for message of type '<potential_cloud-response>"
  (cl:format cl:nil "int8 flag_cloud~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'potential_cloud-response)))
  "Returns full string definition for message of type 'potential_cloud-response"
  (cl:format cl:nil "int8 flag_cloud~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <potential_cloud-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <potential_cloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'potential_cloud-response
    (cl:cons ':flag_cloud (flag_cloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'potential_cloud)))
  'potential_cloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'potential_cloud)))
  'potential_cloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'potential_cloud)))
  "Returns string type for a service object of type '<potential_cloud>"
  "dg_msgs/potential_cloud")