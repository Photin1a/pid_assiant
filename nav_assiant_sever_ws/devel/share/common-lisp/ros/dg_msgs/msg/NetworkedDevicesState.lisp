; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude NetworkedDevicesState.msg.html

(cl:defclass <NetworkedDevicesState> (roslisp-msg-protocol:ros-message)
  ((device_name
    :reader device_name
    :initarg :device_name
    :type cl:string
    :initform "")
   (ip_address
    :reader ip_address
    :initarg :ip_address
    :type cl:string
    :initform "")
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:MonitorState
    :initform (cl:make-instance 'dg_msgs-msg:MonitorState)))
)

(cl:defclass NetworkedDevicesState (<NetworkedDevicesState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkedDevicesState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkedDevicesState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<NetworkedDevicesState> is deprecated: use dg_msgs-msg:NetworkedDevicesState instead.")))

(cl:ensure-generic-function 'device_name-val :lambda-list '(m))
(cl:defmethod device_name-val ((m <NetworkedDevicesState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:device_name-val is deprecated.  Use dg_msgs-msg:device_name instead.")
  (device_name m))

(cl:ensure-generic-function 'ip_address-val :lambda-list '(m))
(cl:defmethod ip_address-val ((m <NetworkedDevicesState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:ip_address-val is deprecated.  Use dg_msgs-msg:ip_address instead.")
  (ip_address m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <NetworkedDevicesState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_info-val is deprecated.  Use dg_msgs-msg:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkedDevicesState>) ostream)
  "Serializes a message object of type '<NetworkedDevicesState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip_address))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkedDevicesState>) istream)
  "Deserializes a message object of type '<NetworkedDevicesState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip_address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip_address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkedDevicesState>)))
  "Returns string type for a message object of type '<NetworkedDevicesState>"
  "dg_msgs/NetworkedDevicesState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkedDevicesState)))
  "Returns string type for a message object of type 'NetworkedDevicesState"
  "dg_msgs/NetworkedDevicesState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkedDevicesState>)))
  "Returns md5sum for a message object of type '<NetworkedDevicesState>"
  "9aa0832958f0e07c49da88632d6eef9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkedDevicesState)))
  "Returns md5sum for a message object of type 'NetworkedDevicesState"
  "9aa0832958f0e07c49da88632d6eef9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkedDevicesState>)))
  "Returns full string definition for message of type '<NetworkedDevicesState>"
  (cl:format cl:nil "# 联网设备状态~%string device_name          # 设备名~%string ip_address           # 设备地址IPv4~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkedDevicesState)))
  "Returns full string definition for message of type 'NetworkedDevicesState"
  (cl:format cl:nil "# 联网设备状态~%string device_name          # 设备名~%string ip_address           # 设备地址IPv4~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkedDevicesState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'device_name))
     4 (cl:length (cl:slot-value msg 'ip_address))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkedDevicesState>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkedDevicesState
    (cl:cons ':device_name (device_name msg))
    (cl:cons ':ip_address (ip_address msg))
    (cl:cons ':state_info (state_info msg))
))
