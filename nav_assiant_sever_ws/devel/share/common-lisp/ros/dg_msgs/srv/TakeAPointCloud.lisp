; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TakeAPointCloud-request.msg.html

(cl:defclass <TakeAPointCloud-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TakeAPointCloud-request (<TakeAPointCloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeAPointCloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeAPointCloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TakeAPointCloud-request> is deprecated: use dg_msgs-srv:TakeAPointCloud-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeAPointCloud-request>) ostream)
  "Serializes a message object of type '<TakeAPointCloud-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeAPointCloud-request>) istream)
  "Deserializes a message object of type '<TakeAPointCloud-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeAPointCloud-request>)))
  "Returns string type for a service object of type '<TakeAPointCloud-request>"
  "dg_msgs/TakeAPointCloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPointCloud-request)))
  "Returns string type for a service object of type 'TakeAPointCloud-request"
  "dg_msgs/TakeAPointCloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeAPointCloud-request>)))
  "Returns md5sum for a message object of type '<TakeAPointCloud-request>"
  "62cbe1cfe333a66132a02f178e9a8274")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeAPointCloud-request)))
  "Returns md5sum for a message object of type 'TakeAPointCloud-request"
  "62cbe1cfe333a66132a02f178e9a8274")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeAPointCloud-request>)))
  "Returns full string definition for message of type '<TakeAPointCloud-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeAPointCloud-request)))
  "Returns full string definition for message of type 'TakeAPointCloud-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeAPointCloud-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeAPointCloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeAPointCloud-request
))
;//! \htmlinclude TakeAPointCloud-response.msg.html

(cl:defclass <TakeAPointCloud-response> (roslisp-msg-protocol:ros-message)
  ((PointCloud
    :reader PointCloud
    :initarg :PointCloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass TakeAPointCloud-response (<TakeAPointCloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeAPointCloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeAPointCloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TakeAPointCloud-response> is deprecated: use dg_msgs-srv:TakeAPointCloud-response instead.")))

(cl:ensure-generic-function 'PointCloud-val :lambda-list '(m))
(cl:defmethod PointCloud-val ((m <TakeAPointCloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:PointCloud-val is deprecated.  Use dg_msgs-srv:PointCloud instead.")
  (PointCloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeAPointCloud-response>) ostream)
  "Serializes a message object of type '<TakeAPointCloud-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'PointCloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeAPointCloud-response>) istream)
  "Deserializes a message object of type '<TakeAPointCloud-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'PointCloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeAPointCloud-response>)))
  "Returns string type for a service object of type '<TakeAPointCloud-response>"
  "dg_msgs/TakeAPointCloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPointCloud-response)))
  "Returns string type for a service object of type 'TakeAPointCloud-response"
  "dg_msgs/TakeAPointCloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeAPointCloud-response>)))
  "Returns md5sum for a message object of type '<TakeAPointCloud-response>"
  "62cbe1cfe333a66132a02f178e9a8274")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeAPointCloud-response)))
  "Returns md5sum for a message object of type 'TakeAPointCloud-response"
  "62cbe1cfe333a66132a02f178e9a8274")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeAPointCloud-response>)))
  "Returns full string definition for message of type '<TakeAPointCloud-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 PointCloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeAPointCloud-response)))
  "Returns full string definition for message of type 'TakeAPointCloud-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 PointCloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeAPointCloud-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'PointCloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeAPointCloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeAPointCloud-response
    (cl:cons ':PointCloud (PointCloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TakeAPointCloud)))
  'TakeAPointCloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TakeAPointCloud)))
  'TakeAPointCloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPointCloud)))
  "Returns string type for a service object of type '<TakeAPointCloud>"
  "dg_msgs/TakeAPointCloud")