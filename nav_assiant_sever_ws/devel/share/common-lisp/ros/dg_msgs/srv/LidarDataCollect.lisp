; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude LidarDataCollect-request.msg.html

(cl:defclass <LidarDataCollect-request> (roslisp-msg-protocol:ros-message)
  ((topic_lidar
    :reader topic_lidar
    :initarg :topic_lidar
    :type cl:string
    :initform "")
   (collect_frames
    :reader collect_frames
    :initarg :collect_frames
    :type cl:integer
    :initform 0)
   (data_type
    :reader data_type
    :initarg :data_type
    :type cl:boolean
    :initform cl:nil)
   (save_path
    :reader save_path
    :initarg :save_path
    :type cl:string
    :initform ""))
)

(cl:defclass LidarDataCollect-request (<LidarDataCollect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarDataCollect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarDataCollect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LidarDataCollect-request> is deprecated: use dg_msgs-srv:LidarDataCollect-request instead.")))

(cl:ensure-generic-function 'topic_lidar-val :lambda-list '(m))
(cl:defmethod topic_lidar-val ((m <LidarDataCollect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:topic_lidar-val is deprecated.  Use dg_msgs-srv:topic_lidar instead.")
  (topic_lidar m))

(cl:ensure-generic-function 'collect_frames-val :lambda-list '(m))
(cl:defmethod collect_frames-val ((m <LidarDataCollect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:collect_frames-val is deprecated.  Use dg_msgs-srv:collect_frames instead.")
  (collect_frames m))

(cl:ensure-generic-function 'data_type-val :lambda-list '(m))
(cl:defmethod data_type-val ((m <LidarDataCollect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:data_type-val is deprecated.  Use dg_msgs-srv:data_type instead.")
  (data_type m))

(cl:ensure-generic-function 'save_path-val :lambda-list '(m))
(cl:defmethod save_path-val ((m <LidarDataCollect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:save_path-val is deprecated.  Use dg_msgs-srv:save_path instead.")
  (save_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarDataCollect-request>) ostream)
  "Serializes a message object of type '<LidarDataCollect-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_lidar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_lidar))
  (cl:let* ((signed (cl:slot-value msg 'collect_frames)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data_type) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'save_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'save_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarDataCollect-request>) istream)
  "Deserializes a message object of type '<LidarDataCollect-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_lidar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_lidar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collect_frames) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'data_type) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'save_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'save_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarDataCollect-request>)))
  "Returns string type for a service object of type '<LidarDataCollect-request>"
  "dg_msgs/LidarDataCollectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarDataCollect-request)))
  "Returns string type for a service object of type 'LidarDataCollect-request"
  "dg_msgs/LidarDataCollectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarDataCollect-request>)))
  "Returns md5sum for a message object of type '<LidarDataCollect-request>"
  "590a098be25ae6967e808f039349d40f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarDataCollect-request)))
  "Returns md5sum for a message object of type 'LidarDataCollect-request"
  "590a098be25ae6967e808f039349d40f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarDataCollect-request>)))
  "Returns full string definition for message of type '<LidarDataCollect-request>"
  (cl:format cl:nil "string topic_lidar # 雷达话题名~%int32 collect_frames # 需要采集的帧数~%bool data_type # 雷达数据类型: 0: 默认livox CustomMsg, 1: ros pcd2~%string save_path # 保存路径~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarDataCollect-request)))
  "Returns full string definition for message of type 'LidarDataCollect-request"
  (cl:format cl:nil "string topic_lidar # 雷达话题名~%int32 collect_frames # 需要采集的帧数~%bool data_type # 雷达数据类型: 0: 默认livox CustomMsg, 1: ros pcd2~%string save_path # 保存路径~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarDataCollect-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_lidar))
     4
     1
     4 (cl:length (cl:slot-value msg 'save_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarDataCollect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarDataCollect-request
    (cl:cons ':topic_lidar (topic_lidar msg))
    (cl:cons ':collect_frames (collect_frames msg))
    (cl:cons ':data_type (data_type msg))
    (cl:cons ':save_path (save_path msg))
))
;//! \htmlinclude LidarDataCollect-response.msg.html

(cl:defclass <LidarDataCollect-response> (roslisp-msg-protocol:ros-message)
  ((pcd_collect
    :reader pcd_collect
    :initarg :pcd_collect
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass LidarDataCollect-response (<LidarDataCollect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LidarDataCollect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LidarDataCollect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LidarDataCollect-response> is deprecated: use dg_msgs-srv:LidarDataCollect-response instead.")))

(cl:ensure-generic-function 'pcd_collect-val :lambda-list '(m))
(cl:defmethod pcd_collect-val ((m <LidarDataCollect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pcd_collect-val is deprecated.  Use dg_msgs-srv:pcd_collect instead.")
  (pcd_collect m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <LidarDataCollect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LidarDataCollect-response>) ostream)
  "Serializes a message object of type '<LidarDataCollect-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pcd_collect) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LidarDataCollect-response>) istream)
  "Deserializes a message object of type '<LidarDataCollect-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pcd_collect) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LidarDataCollect-response>)))
  "Returns string type for a service object of type '<LidarDataCollect-response>"
  "dg_msgs/LidarDataCollectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarDataCollect-response)))
  "Returns string type for a service object of type 'LidarDataCollect-response"
  "dg_msgs/LidarDataCollectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LidarDataCollect-response>)))
  "Returns md5sum for a message object of type '<LidarDataCollect-response>"
  "590a098be25ae6967e808f039349d40f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LidarDataCollect-response)))
  "Returns md5sum for a message object of type 'LidarDataCollect-response"
  "590a098be25ae6967e808f039349d40f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LidarDataCollect-response>)))
  "Returns full string definition for message of type '<LidarDataCollect-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2  pcd_collect # 返回采集的点云~%UniversalStateInfo  state_info # 返回采集状态信息~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LidarDataCollect-response)))
  "Returns full string definition for message of type 'LidarDataCollect-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2  pcd_collect # 返回采集的点云~%UniversalStateInfo  state_info # 返回采集状态信息~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LidarDataCollect-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pcd_collect))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LidarDataCollect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LidarDataCollect-response
    (cl:cons ':pcd_collect (pcd_collect msg))
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LidarDataCollect)))
  'LidarDataCollect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LidarDataCollect)))
  'LidarDataCollect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LidarDataCollect)))
  "Returns string type for a service object of type '<LidarDataCollect>"
  "dg_msgs/LidarDataCollect")