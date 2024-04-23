; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude NetworkCardState.msg.html

(cl:defclass <NetworkCardState> (roslisp-msg-protocol:ros-message)
  ((network_card_name
    :reader network_card_name
    :initarg :network_card_name
    :type cl:string
    :initform "")
   (ip_address
    :reader ip_address
    :initarg :ip_address
    :type cl:string
    :initform "")
   (net_upload
    :reader net_upload
    :initarg :net_upload
    :type cl:float
    :initform 0.0)
   (net_download
    :reader net_download
    :initarg :net_download
    :type cl:float
    :initform 0.0)
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:MonitorState
    :initform (cl:make-instance 'dg_msgs-msg:MonitorState)))
)

(cl:defclass NetworkCardState (<NetworkCardState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkCardState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkCardState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<NetworkCardState> is deprecated: use dg_msgs-msg:NetworkCardState instead.")))

(cl:ensure-generic-function 'network_card_name-val :lambda-list '(m))
(cl:defmethod network_card_name-val ((m <NetworkCardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:network_card_name-val is deprecated.  Use dg_msgs-msg:network_card_name instead.")
  (network_card_name m))

(cl:ensure-generic-function 'ip_address-val :lambda-list '(m))
(cl:defmethod ip_address-val ((m <NetworkCardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:ip_address-val is deprecated.  Use dg_msgs-msg:ip_address instead.")
  (ip_address m))

(cl:ensure-generic-function 'net_upload-val :lambda-list '(m))
(cl:defmethod net_upload-val ((m <NetworkCardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:net_upload-val is deprecated.  Use dg_msgs-msg:net_upload instead.")
  (net_upload m))

(cl:ensure-generic-function 'net_download-val :lambda-list '(m))
(cl:defmethod net_download-val ((m <NetworkCardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:net_download-val is deprecated.  Use dg_msgs-msg:net_download instead.")
  (net_download m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <NetworkCardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_info-val is deprecated.  Use dg_msgs-msg:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkCardState>) ostream)
  "Serializes a message object of type '<NetworkCardState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'network_card_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'network_card_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip_address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip_address))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'net_upload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'net_download))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkCardState>) istream)
  "Deserializes a message object of type '<NetworkCardState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'network_card_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'network_card_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip_address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip_address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'net_upload) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'net_download) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkCardState>)))
  "Returns string type for a message object of type '<NetworkCardState>"
  "dg_msgs/NetworkCardState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkCardState)))
  "Returns string type for a message object of type 'NetworkCardState"
  "dg_msgs/NetworkCardState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkCardState>)))
  "Returns md5sum for a message object of type '<NetworkCardState>"
  "52de5677eb4029ed135c560d8dca6c4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkCardState)))
  "Returns md5sum for a message object of type 'NetworkCardState"
  "52de5677eb4029ed135c560d8dca6c4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkCardState>)))
  "Returns full string definition for message of type '<NetworkCardState>"
  (cl:format cl:nil "# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkCardState)))
  "Returns full string definition for message of type 'NetworkCardState"
  (cl:format cl:nil "# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkCardState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'network_card_name))
     4 (cl:length (cl:slot-value msg 'ip_address))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkCardState>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkCardState
    (cl:cons ':network_card_name (network_card_name msg))
    (cl:cons ':ip_address (ip_address msg))
    (cl:cons ':net_upload (net_upload msg))
    (cl:cons ':net_download (net_download msg))
    (cl:cons ':state_info (state_info msg))
))
