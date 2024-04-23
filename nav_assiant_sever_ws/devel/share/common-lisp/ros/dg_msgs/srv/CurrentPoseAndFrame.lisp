; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude CurrentPoseAndFrame-request.msg.html

(cl:defclass <CurrentPoseAndFrame-request> (roslisp-msg-protocol:ros-message)
  ((sensor_type
    :reader sensor_type
    :initarg :sensor_type
    :type cl:string
    :initform "")
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:string
    :initform "")
   (directory
    :reader directory
    :initarg :directory
    :type cl:string
    :initform "")
   (frame_type
    :reader frame_type
    :initarg :frame_type
    :type cl:string
    :initform ""))
)

(cl:defclass CurrentPoseAndFrame-request (<CurrentPoseAndFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentPoseAndFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentPoseAndFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CurrentPoseAndFrame-request> is deprecated: use dg_msgs-srv:CurrentPoseAndFrame-request instead.")))

(cl:ensure-generic-function 'sensor_type-val :lambda-list '(m))
(cl:defmethod sensor_type-val ((m <CurrentPoseAndFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:sensor_type-val is deprecated.  Use dg_msgs-srv:sensor_type instead.")
  (sensor_type m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <CurrentPoseAndFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:sensor_id-val is deprecated.  Use dg_msgs-srv:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'directory-val :lambda-list '(m))
(cl:defmethod directory-val ((m <CurrentPoseAndFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:directory-val is deprecated.  Use dg_msgs-srv:directory instead.")
  (directory m))

(cl:ensure-generic-function 'frame_type-val :lambda-list '(m))
(cl:defmethod frame_type-val ((m <CurrentPoseAndFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:frame_type-val is deprecated.  Use dg_msgs-srv:frame_type instead.")
  (frame_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentPoseAndFrame-request>) ostream)
  "Serializes a message object of type '<CurrentPoseAndFrame-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'directory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'directory))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentPoseAndFrame-request>) istream)
  "Deserializes a message object of type '<CurrentPoseAndFrame-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'directory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'directory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentPoseAndFrame-request>)))
  "Returns string type for a service object of type '<CurrentPoseAndFrame-request>"
  "dg_msgs/CurrentPoseAndFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPoseAndFrame-request)))
  "Returns string type for a service object of type 'CurrentPoseAndFrame-request"
  "dg_msgs/CurrentPoseAndFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentPoseAndFrame-request>)))
  "Returns md5sum for a message object of type '<CurrentPoseAndFrame-request>"
  "413286d2ab742cdfc7a2610d488af047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentPoseAndFrame-request)))
  "Returns md5sum for a message object of type 'CurrentPoseAndFrame-request"
  "413286d2ab742cdfc7a2610d488af047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentPoseAndFrame-request>)))
  "Returns full string definition for message of type '<CurrentPoseAndFrame-request>"
  (cl:format cl:nil "# 采集区域帧/车头帧~%string sensor_type         # 雷达（lidar）、精扫相机（camera）~%string sensor_id           # 雷达topic  相机分组编号~%string directory           # 数据存放目录~%string frame_type          # 帧类型：车头配准帧（head）区域配准帧（region）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentPoseAndFrame-request)))
  "Returns full string definition for message of type 'CurrentPoseAndFrame-request"
  (cl:format cl:nil "# 采集区域帧/车头帧~%string sensor_type         # 雷达（lidar）、精扫相机（camera）~%string sensor_id           # 雷达topic  相机分组编号~%string directory           # 数据存放目录~%string frame_type          # 帧类型：车头配准帧（head）区域配准帧（region）~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentPoseAndFrame-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensor_type))
     4 (cl:length (cl:slot-value msg 'sensor_id))
     4 (cl:length (cl:slot-value msg 'directory))
     4 (cl:length (cl:slot-value msg 'frame_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentPoseAndFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentPoseAndFrame-request
    (cl:cons ':sensor_type (sensor_type msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':directory (directory msg))
    (cl:cons ':frame_type (frame_type msg))
))
;//! \htmlinclude CurrentPoseAndFrame-response.msg.html

(cl:defclass <CurrentPoseAndFrame-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (data_file_path
    :reader data_file_path
    :initarg :data_file_path
    :type cl:string
    :initform ""))
)

(cl:defclass CurrentPoseAndFrame-response (<CurrentPoseAndFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentPoseAndFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentPoseAndFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CurrentPoseAndFrame-response> is deprecated: use dg_msgs-srv:CurrentPoseAndFrame-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CurrentPoseAndFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CurrentPoseAndFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:pose-val is deprecated.  Use dg_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'data_file_path-val :lambda-list '(m))
(cl:defmethod data_file_path-val ((m <CurrentPoseAndFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:data_file_path-val is deprecated.  Use dg_msgs-srv:data_file_path instead.")
  (data_file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentPoseAndFrame-response>) ostream)
  "Serializes a message object of type '<CurrentPoseAndFrame-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentPoseAndFrame-response>) istream)
  "Deserializes a message object of type '<CurrentPoseAndFrame-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentPoseAndFrame-response>)))
  "Returns string type for a service object of type '<CurrentPoseAndFrame-response>"
  "dg_msgs/CurrentPoseAndFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPoseAndFrame-response)))
  "Returns string type for a service object of type 'CurrentPoseAndFrame-response"
  "dg_msgs/CurrentPoseAndFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentPoseAndFrame-response>)))
  "Returns md5sum for a message object of type '<CurrentPoseAndFrame-response>"
  "413286d2ab742cdfc7a2610d488af047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentPoseAndFrame-response)))
  "Returns md5sum for a message object of type 'CurrentPoseAndFrame-response"
  "413286d2ab742cdfc7a2610d488af047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentPoseAndFrame-response>)))
  "Returns full string definition for message of type '<CurrentPoseAndFrame-response>"
  (cl:format cl:nil "int32 result                       # 0: 成功  非0：失败~%geometry_msgs/PoseStamped pose     # 当前机器人全局坐标~%string data_file_path              # 采集数据存放路径~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentPoseAndFrame-response)))
  "Returns full string definition for message of type 'CurrentPoseAndFrame-response"
  (cl:format cl:nil "int32 result                       # 0: 成功  非0：失败~%geometry_msgs/PoseStamped pose     # 当前机器人全局坐标~%string data_file_path              # 采集数据存放路径~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentPoseAndFrame-response>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'data_file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentPoseAndFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentPoseAndFrame-response
    (cl:cons ':result (result msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':data_file_path (data_file_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CurrentPoseAndFrame)))
  'CurrentPoseAndFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CurrentPoseAndFrame)))
  'CurrentPoseAndFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentPoseAndFrame)))
  "Returns string type for a service object of type '<CurrentPoseAndFrame>"
  "dg_msgs/CurrentPoseAndFrame")