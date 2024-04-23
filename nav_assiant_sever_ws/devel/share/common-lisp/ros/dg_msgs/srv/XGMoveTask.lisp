; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude XGMoveTask-request.msg.html

(cl:defclass <XGMoveTask-request> (roslisp-msg-protocol:ros-message)
  ((station_name
    :reader station_name
    :initarg :station_name
    :type cl:string
    :initform "")
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (max_deviation
    :reader max_deviation
    :initarg :max_deviation
    :type cl:float
    :initform 0.0)
   (method
    :reader method
    :initarg :method
    :type cl:string
    :initform "")
   (backing_to_home
    :reader backing_to_home
    :initarg :backing_to_home
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass XGMoveTask-request (<XGMoveTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGMoveTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGMoveTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGMoveTask-request> is deprecated: use dg_msgs-srv:XGMoveTask-request instead.")))

(cl:ensure-generic-function 'station_name-val :lambda-list '(m))
(cl:defmethod station_name-val ((m <XGMoveTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:station_name-val is deprecated.  Use dg_msgs-srv:station_name instead.")
  (station_name m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <XGMoveTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:target_pose-val is deprecated.  Use dg_msgs-srv:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'max_deviation-val :lambda-list '(m))
(cl:defmethod max_deviation-val ((m <XGMoveTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:max_deviation-val is deprecated.  Use dg_msgs-srv:max_deviation instead.")
  (max_deviation m))

(cl:ensure-generic-function 'method-val :lambda-list '(m))
(cl:defmethod method-val ((m <XGMoveTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:method-val is deprecated.  Use dg_msgs-srv:method instead.")
  (method m))

(cl:ensure-generic-function 'backing_to_home-val :lambda-list '(m))
(cl:defmethod backing_to_home-val ((m <XGMoveTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:backing_to_home-val is deprecated.  Use dg_msgs-srv:backing_to_home instead.")
  (backing_to_home m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGMoveTask-request>) ostream)
  "Serializes a message object of type '<XGMoveTask-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'station_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'station_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_deviation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'method))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'backing_to_home) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGMoveTask-request>) istream)
  "Deserializes a message object of type '<XGMoveTask-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'station_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_deviation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'backing_to_home) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGMoveTask-request>)))
  "Returns string type for a service object of type '<XGMoveTask-request>"
  "dg_msgs/XGMoveTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGMoveTask-request)))
  "Returns string type for a service object of type 'XGMoveTask-request"
  "dg_msgs/XGMoveTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGMoveTask-request>)))
  "Returns md5sum for a message object of type '<XGMoveTask-request>"
  "9663c9eb04f4ae4d5ab6a6596938f0d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGMoveTask-request)))
  "Returns md5sum for a message object of type 'XGMoveTask-request"
  "9663c9eb04f4ae4d5ab6a6596938f0d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGMoveTask-request>)))
  "Returns full string definition for message of type '<XGMoveTask-request>"
  (cl:format cl:nil "# 为仙工底盘提供的专用move_task服务~%~%# string line_name                          # 任务线名，可缺省 -- 未来可能弃用~%string station_name                         # 站点名，可缺省~%geometry_msgs/PoseStamped target_pose       # 目标pose~%float32 max_deviation                       # 最大偏移误差~%string method                               # 运动方式，forward, backward~%bool backing_to_home                        # 返回到地图初始点~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGMoveTask-request)))
  "Returns full string definition for message of type 'XGMoveTask-request"
  (cl:format cl:nil "# 为仙工底盘提供的专用move_task服务~%~%# string line_name                          # 任务线名，可缺省 -- 未来可能弃用~%string station_name                         # 站点名，可缺省~%geometry_msgs/PoseStamped target_pose       # 目标pose~%float32 max_deviation                       # 最大偏移误差~%string method                               # 运动方式，forward, backward~%bool backing_to_home                        # 返回到地图初始点~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGMoveTask-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'station_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     4
     4 (cl:length (cl:slot-value msg 'method))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGMoveTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XGMoveTask-request
    (cl:cons ':station_name (station_name msg))
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':max_deviation (max_deviation msg))
    (cl:cons ':method (method msg))
    (cl:cons ':backing_to_home (backing_to_home msg))
))
;//! \htmlinclude XGMoveTask-response.msg.html

(cl:defclass <XGMoveTask-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass XGMoveTask-response (<XGMoveTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGMoveTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGMoveTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGMoveTask-response> is deprecated: use dg_msgs-srv:XGMoveTask-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <XGMoveTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGMoveTask-response>) ostream)
  "Serializes a message object of type '<XGMoveTask-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGMoveTask-response>) istream)
  "Deserializes a message object of type '<XGMoveTask-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGMoveTask-response>)))
  "Returns string type for a service object of type '<XGMoveTask-response>"
  "dg_msgs/XGMoveTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGMoveTask-response)))
  "Returns string type for a service object of type 'XGMoveTask-response"
  "dg_msgs/XGMoveTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGMoveTask-response>)))
  "Returns md5sum for a message object of type '<XGMoveTask-response>"
  "9663c9eb04f4ae4d5ab6a6596938f0d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGMoveTask-response)))
  "Returns md5sum for a message object of type 'XGMoveTask-response"
  "9663c9eb04f4ae4d5ab6a6596938f0d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGMoveTask-response>)))
  "Returns full string definition for message of type '<XGMoveTask-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGMoveTask-response)))
  "Returns full string definition for message of type 'XGMoveTask-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGMoveTask-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGMoveTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XGMoveTask-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XGMoveTask)))
  'XGMoveTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XGMoveTask)))
  'XGMoveTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGMoveTask)))
  "Returns string type for a service object of type '<XGMoveTask>"
  "dg_msgs/XGMoveTask")