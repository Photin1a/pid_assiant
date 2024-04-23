; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude UniversalStateInfo.msg.html

(cl:defclass <UniversalStateInfo> (roslisp-msg-protocol:ros-message)
  ((state_index
    :reader state_index
    :initarg :state_index
    :type cl:integer
    :initform 0)
   (node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform "")
   (state_msgs
    :reader state_msgs
    :initarg :state_msgs
    :type cl:string
    :initform ""))
)

(cl:defclass UniversalStateInfo (<UniversalStateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UniversalStateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UniversalStateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<UniversalStateInfo> is deprecated: use dg_msgs-msg:UniversalStateInfo instead.")))

(cl:ensure-generic-function 'state_index-val :lambda-list '(m))
(cl:defmethod state_index-val ((m <UniversalStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_index-val is deprecated.  Use dg_msgs-msg:state_index instead.")
  (state_index m))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <UniversalStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:node_name-val is deprecated.  Use dg_msgs-msg:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'state_msgs-val :lambda-list '(m))
(cl:defmethod state_msgs-val ((m <UniversalStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_msgs-val is deprecated.  Use dg_msgs-msg:state_msgs instead.")
  (state_msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UniversalStateInfo>) ostream)
  "Serializes a message object of type '<UniversalStateInfo>"
  (cl:let* ((signed (cl:slot-value msg 'state_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UniversalStateInfo>) istream)
  "Deserializes a message object of type '<UniversalStateInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_msgs) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_msgs) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UniversalStateInfo>)))
  "Returns string type for a message object of type '<UniversalStateInfo>"
  "dg_msgs/UniversalStateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UniversalStateInfo)))
  "Returns string type for a message object of type 'UniversalStateInfo"
  "dg_msgs/UniversalStateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UniversalStateInfo>)))
  "Returns md5sum for a message object of type '<UniversalStateInfo>"
  "77e9811d2f2bef9dda3fcadf75d60619")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UniversalStateInfo)))
  "Returns md5sum for a message object of type 'UniversalStateInfo"
  "77e9811d2f2bef9dda3fcadf75d60619")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UniversalStateInfo>)))
  "Returns full string definition for message of type '<UniversalStateInfo>"
  (cl:format cl:nil "int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UniversalStateInfo)))
  "Returns full string definition for message of type 'UniversalStateInfo"
  (cl:format cl:nil "int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UniversalStateInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'node_name))
     4 (cl:length (cl:slot-value msg 'state_msgs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UniversalStateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UniversalStateInfo
    (cl:cons ':state_index (state_index msg))
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':state_msgs (state_msgs msg))
))
