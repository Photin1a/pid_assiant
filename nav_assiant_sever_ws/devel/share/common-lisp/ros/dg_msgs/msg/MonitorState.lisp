; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude MonitorState.msg.html

(cl:defclass <MonitorState> (roslisp-msg-protocol:ros-message)
  ((error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (additional_msgs
    :reader additional_msgs
    :initarg :additional_msgs
    :type cl:string
    :initform ""))
)

(cl:defclass MonitorState (<MonitorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MonitorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MonitorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<MonitorState> is deprecated: use dg_msgs-msg:MonitorState instead.")))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MonitorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:error_code-val is deprecated.  Use dg_msgs-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'additional_msgs-val :lambda-list '(m))
(cl:defmethod additional_msgs-val ((m <MonitorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:additional_msgs-val is deprecated.  Use dg_msgs-msg:additional_msgs instead.")
  (additional_msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MonitorState>) ostream)
  "Serializes a message object of type '<MonitorState>"
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'additional_msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'additional_msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MonitorState>) istream)
  "Deserializes a message object of type '<MonitorState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'additional_msgs) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'additional_msgs) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MonitorState>)))
  "Returns string type for a message object of type '<MonitorState>"
  "dg_msgs/MonitorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MonitorState)))
  "Returns string type for a message object of type 'MonitorState"
  "dg_msgs/MonitorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MonitorState>)))
  "Returns md5sum for a message object of type '<MonitorState>"
  "bda9bd9fb908de41898b36bdcadd650f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MonitorState)))
  "Returns md5sum for a message object of type 'MonitorState"
  "bda9bd9fb908de41898b36bdcadd650f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MonitorState>)))
  "Returns full string definition for message of type '<MonitorState>"
  (cl:format cl:nil "# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MonitorState)))
  "Returns full string definition for message of type 'MonitorState"
  (cl:format cl:nil "# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MonitorState>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'additional_msgs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MonitorState>))
  "Converts a ROS message object to a list"
  (cl:list 'MonitorState
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':additional_msgs (additional_msgs msg))
))
