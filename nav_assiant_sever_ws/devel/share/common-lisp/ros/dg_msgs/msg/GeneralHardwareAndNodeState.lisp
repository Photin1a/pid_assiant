; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude GeneralHardwareAndNodeState.msg.html

(cl:defclass <GeneralHardwareAndNodeState> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:MonitorState
    :initform (cl:make-instance 'dg_msgs-msg:MonitorState)))
)

(cl:defclass GeneralHardwareAndNodeState (<GeneralHardwareAndNodeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeneralHardwareAndNodeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeneralHardwareAndNodeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<GeneralHardwareAndNodeState> is deprecated: use dg_msgs-msg:GeneralHardwareAndNodeState instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GeneralHardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:name-val is deprecated.  Use dg_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <GeneralHardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_info-val is deprecated.  Use dg_msgs-msg:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeneralHardwareAndNodeState>) ostream)
  "Serializes a message object of type '<GeneralHardwareAndNodeState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeneralHardwareAndNodeState>) istream)
  "Deserializes a message object of type '<GeneralHardwareAndNodeState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeneralHardwareAndNodeState>)))
  "Returns string type for a message object of type '<GeneralHardwareAndNodeState>"
  "dg_msgs/GeneralHardwareAndNodeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeneralHardwareAndNodeState)))
  "Returns string type for a message object of type 'GeneralHardwareAndNodeState"
  "dg_msgs/GeneralHardwareAndNodeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeneralHardwareAndNodeState>)))
  "Returns md5sum for a message object of type '<GeneralHardwareAndNodeState>"
  "8286b537435a2ee37a9de658f76fd67d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeneralHardwareAndNodeState)))
  "Returns md5sum for a message object of type 'GeneralHardwareAndNodeState"
  "8286b537435a2ee37a9de658f76fd67d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeneralHardwareAndNodeState>)))
  "Returns full string definition for message of type '<GeneralHardwareAndNodeState>"
  (cl:format cl:nil "# 通用的状态信息~%string name                 # 对象名~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeneralHardwareAndNodeState)))
  "Returns full string definition for message of type 'GeneralHardwareAndNodeState"
  (cl:format cl:nil "# 通用的状态信息~%string name                 # 对象名~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeneralHardwareAndNodeState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeneralHardwareAndNodeState>))
  "Converts a ROS message object to a list"
  (cl:list 'GeneralHardwareAndNodeState
    (cl:cons ':name (name msg))
    (cl:cons ':state_info (state_info msg))
))
