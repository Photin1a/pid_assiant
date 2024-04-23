; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude CameraDataCollect-request.msg.html

(cl:defclass <CameraDataCollect-request> (roslisp-msg-protocol:ros-message)
  ((point_cloud_path
    :reader point_cloud_path
    :initarg :point_cloud_path
    :type cl:string
    :initform ""))
)

(cl:defclass CameraDataCollect-request (<CameraDataCollect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraDataCollect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraDataCollect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CameraDataCollect-request> is deprecated: use dg_msgs-srv:CameraDataCollect-request instead.")))

(cl:ensure-generic-function 'point_cloud_path-val :lambda-list '(m))
(cl:defmethod point_cloud_path-val ((m <CameraDataCollect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:point_cloud_path-val is deprecated.  Use dg_msgs-srv:point_cloud_path instead.")
  (point_cloud_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraDataCollect-request>) ostream)
  "Serializes a message object of type '<CameraDataCollect-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point_cloud_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point_cloud_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraDataCollect-request>) istream)
  "Deserializes a message object of type '<CameraDataCollect-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_cloud_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point_cloud_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraDataCollect-request>)))
  "Returns string type for a service object of type '<CameraDataCollect-request>"
  "dg_msgs/CameraDataCollectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraDataCollect-request)))
  "Returns string type for a service object of type 'CameraDataCollect-request"
  "dg_msgs/CameraDataCollectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraDataCollect-request>)))
  "Returns md5sum for a message object of type '<CameraDataCollect-request>"
  "c67c27276579d6590e6569ff105e6071")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraDataCollect-request)))
  "Returns md5sum for a message object of type 'CameraDataCollect-request"
  "c67c27276579d6590e6569ff105e6071")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraDataCollect-request>)))
  "Returns full string definition for message of type '<CameraDataCollect-request>"
  (cl:format cl:nil "string point_cloud_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraDataCollect-request)))
  "Returns full string definition for message of type 'CameraDataCollect-request"
  (cl:format cl:nil "string point_cloud_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraDataCollect-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'point_cloud_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraDataCollect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraDataCollect-request
    (cl:cons ':point_cloud_path (point_cloud_path msg))
))
;//! \htmlinclude CameraDataCollect-response.msg.html

(cl:defclass <CameraDataCollect-response> (roslisp-msg-protocol:ros-message)
  ((PointCloud
    :reader PointCloud
    :initarg :PointCloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass CameraDataCollect-response (<CameraDataCollect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraDataCollect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraDataCollect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CameraDataCollect-response> is deprecated: use dg_msgs-srv:CameraDataCollect-response instead.")))

(cl:ensure-generic-function 'PointCloud-val :lambda-list '(m))
(cl:defmethod PointCloud-val ((m <CameraDataCollect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:PointCloud-val is deprecated.  Use dg_msgs-srv:PointCloud instead.")
  (PointCloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraDataCollect-response>) ostream)
  "Serializes a message object of type '<CameraDataCollect-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'PointCloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraDataCollect-response>) istream)
  "Deserializes a message object of type '<CameraDataCollect-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'PointCloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraDataCollect-response>)))
  "Returns string type for a service object of type '<CameraDataCollect-response>"
  "dg_msgs/CameraDataCollectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraDataCollect-response)))
  "Returns string type for a service object of type 'CameraDataCollect-response"
  "dg_msgs/CameraDataCollectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraDataCollect-response>)))
  "Returns md5sum for a message object of type '<CameraDataCollect-response>"
  "c67c27276579d6590e6569ff105e6071")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraDataCollect-response)))
  "Returns md5sum for a message object of type 'CameraDataCollect-response"
  "c67c27276579d6590e6569ff105e6071")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraDataCollect-response>)))
  "Returns full string definition for message of type '<CameraDataCollect-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 PointCloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraDataCollect-response)))
  "Returns full string definition for message of type 'CameraDataCollect-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 PointCloud~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraDataCollect-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'PointCloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraDataCollect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraDataCollect-response
    (cl:cons ':PointCloud (PointCloud msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraDataCollect)))
  'CameraDataCollect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraDataCollect)))
  'CameraDataCollect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraDataCollect)))
  "Returns string type for a service object of type '<CameraDataCollect>"
  "dg_msgs/CameraDataCollect")