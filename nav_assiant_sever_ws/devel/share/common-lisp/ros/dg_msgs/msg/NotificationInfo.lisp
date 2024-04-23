; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude NotificationInfo.msg.html

(cl:defclass <NotificationInfo> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:string
    :initform "")
   (title
    :reader title
    :initarg :title
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (datetime
    :reader datetime
    :initarg :datetime
    :type cl:integer
    :initform 0))
)

(cl:defclass NotificationInfo (<NotificationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NotificationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NotificationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<NotificationInfo> is deprecated: use dg_msgs-msg:NotificationInfo instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NotificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:type-val is deprecated.  Use dg_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <NotificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:level-val is deprecated.  Use dg_msgs-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'title-val :lambda-list '(m))
(cl:defmethod title-val ((m <NotificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:title-val is deprecated.  Use dg_msgs-msg:title instead.")
  (title m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <NotificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:message-val is deprecated.  Use dg_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <NotificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:data-val is deprecated.  Use dg_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'datetime-val :lambda-list '(m))
(cl:defmethod datetime-val ((m <NotificationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:datetime-val is deprecated.  Use dg_msgs-msg:datetime instead.")
  (datetime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NotificationInfo>) ostream)
  "Serializes a message object of type '<NotificationInfo>"
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'level))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'title))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'title))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'datetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'datetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'datetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'datetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'datetime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'datetime)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NotificationInfo>) istream)
  "Deserializes a message object of type '<NotificationInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'level) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'title) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'title) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'datetime)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NotificationInfo>)))
  "Returns string type for a message object of type '<NotificationInfo>"
  "dg_msgs/NotificationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NotificationInfo)))
  "Returns string type for a message object of type 'NotificationInfo"
  "dg_msgs/NotificationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NotificationInfo>)))
  "Returns md5sum for a message object of type '<NotificationInfo>"
  "e515c038beb10a6a0ef7c41f0cd3fe77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NotificationInfo)))
  "Returns md5sum for a message object of type 'NotificationInfo"
  "e515c038beb10a6a0ef7c41f0cd3fe77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NotificationInfo>)))
  "Returns full string definition for message of type '<NotificationInfo>"
  (cl:format cl:nil "int32 type          # 类型编号，用于唯一区分每种通知~%string level         # 等级，包含 verbose, normal, warning, critical~%string title        # 标题~%string message      # 通知文字描述~%string data         # 通知数据，数据内容由通知类型决定，可能为json，base64等多种格式~%uint64 datetime     # 时间~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NotificationInfo)))
  "Returns full string definition for message of type 'NotificationInfo"
  (cl:format cl:nil "int32 type          # 类型编号，用于唯一区分每种通知~%string level         # 等级，包含 verbose, normal, warning, critical~%string title        # 标题~%string message      # 通知文字描述~%string data         # 通知数据，数据内容由通知类型决定，可能为json，base64等多种格式~%uint64 datetime     # 时间~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NotificationInfo>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'level))
     4 (cl:length (cl:slot-value msg 'title))
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:length (cl:slot-value msg 'data))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NotificationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NotificationInfo
    (cl:cons ':type (type msg))
    (cl:cons ':level (level msg))
    (cl:cons ':title (title msg))
    (cl:cons ':message (message msg))
    (cl:cons ':data (data msg))
    (cl:cons ':datetime (datetime msg))
))
