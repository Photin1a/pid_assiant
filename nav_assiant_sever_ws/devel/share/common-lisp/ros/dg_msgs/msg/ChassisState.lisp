; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude ChassisState.msg.html

(cl:defclass <ChassisState> (roslisp-msg-protocol:ros-message)
  ((chassis_state_json
    :reader chassis_state_json
    :initarg :chassis_state_json
    :type cl:string
    :initform "")
   (chassis_type
    :reader chassis_type
    :initarg :chassis_type
    :type cl:string
    :initform "")
   (chassis_name
    :reader chassis_name
    :initarg :chassis_name
    :type cl:string
    :initform "")
   (battery
    :reader battery
    :initarg :battery
    :type cl:float
    :initform 0.0)
   (current_pose
    :reader current_pose
    :initarg :current_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (is_charged
    :reader is_charged
    :initarg :is_charged
    :type cl:boolean
    :initform cl:nil)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:MonitorState
    :initform (cl:make-instance 'dg_msgs-msg:MonitorState)))
)

(cl:defclass ChassisState (<ChassisState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<ChassisState> is deprecated: use dg_msgs-msg:ChassisState instead.")))

(cl:ensure-generic-function 'chassis_state_json-val :lambda-list '(m))
(cl:defmethod chassis_state_json-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:chassis_state_json-val is deprecated.  Use dg_msgs-msg:chassis_state_json instead.")
  (chassis_state_json m))

(cl:ensure-generic-function 'chassis_type-val :lambda-list '(m))
(cl:defmethod chassis_type-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:chassis_type-val is deprecated.  Use dg_msgs-msg:chassis_type instead.")
  (chassis_type m))

(cl:ensure-generic-function 'chassis_name-val :lambda-list '(m))
(cl:defmethod chassis_name-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:chassis_name-val is deprecated.  Use dg_msgs-msg:chassis_name instead.")
  (chassis_name m))

(cl:ensure-generic-function 'battery-val :lambda-list '(m))
(cl:defmethod battery-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:battery-val is deprecated.  Use dg_msgs-msg:battery instead.")
  (battery m))

(cl:ensure-generic-function 'current_pose-val :lambda-list '(m))
(cl:defmethod current_pose-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:current_pose-val is deprecated.  Use dg_msgs-msg:current_pose instead.")
  (current_pose m))

(cl:ensure-generic-function 'is_charged-val :lambda-list '(m))
(cl:defmethod is_charged-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_charged-val is deprecated.  Use dg_msgs-msg:is_charged instead.")
  (is_charged m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:header-val is deprecated.  Use dg_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <ChassisState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_info-val is deprecated.  Use dg_msgs-msg:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisState>) ostream)
  "Serializes a message object of type '<ChassisState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chassis_state_json))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chassis_state_json))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chassis_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chassis_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chassis_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chassis_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charged) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisState>) istream)
  "Deserializes a message object of type '<ChassisState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chassis_state_json) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chassis_state_json) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chassis_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chassis_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chassis_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chassis_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_pose) istream)
    (cl:setf (cl:slot-value msg 'is_charged) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisState>)))
  "Returns string type for a message object of type '<ChassisState>"
  "dg_msgs/ChassisState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisState)))
  "Returns string type for a message object of type 'ChassisState"
  "dg_msgs/ChassisState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisState>)))
  "Returns md5sum for a message object of type '<ChassisState>"
  "75fcdbda3ff2c5f09f982d836b82cd48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisState)))
  "Returns md5sum for a message object of type 'ChassisState"
  "75fcdbda3ff2c5f09f982d836b82cd48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisState>)))
  "Returns full string definition for message of type '<ChassisState>"
  (cl:format cl:nil "string chassis_state_json                    # 底盘各种参数的json文件~%string chassis_type                          # 底盘类型~%string chassis_name                          # 底盘名~%~%# [核心参数] - 是上面的子集~%float32 battery                              # 电池电量~%geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置~%bool is_charged                              # 当前是否在充电~%~%Header header                                # 头部信息 - 主要使用的是时间戳~%dg_msgs/MonitorState state_info              # 状态信息~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisState)))
  "Returns full string definition for message of type 'ChassisState"
  (cl:format cl:nil "string chassis_state_json                    # 底盘各种参数的json文件~%string chassis_type                          # 底盘类型~%string chassis_name                          # 底盘名~%~%# [核心参数] - 是上面的子集~%float32 battery                              # 电池电量~%geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置~%bool is_charged                              # 当前是否在充电~%~%Header header                                # 头部信息 - 主要使用的是时间戳~%dg_msgs/MonitorState state_info              # 状态信息~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'chassis_state_json))
     4 (cl:length (cl:slot-value msg 'chassis_type))
     4 (cl:length (cl:slot-value msg 'chassis_name))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_pose))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisState>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisState
    (cl:cons ':chassis_state_json (chassis_state_json msg))
    (cl:cons ':chassis_type (chassis_type msg))
    (cl:cons ':chassis_name (chassis_name msg))
    (cl:cons ':battery (battery msg))
    (cl:cons ':current_pose (current_pose msg))
    (cl:cons ':is_charged (is_charged msg))
    (cl:cons ':header (header msg))
    (cl:cons ':state_info (state_info msg))
))
