; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude RobotInfo.msg.html

(cl:defclass <RobotInfo> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (robot_model
    :reader robot_model
    :initarg :robot_model
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:integer
    :initform 0)
   (exception_code
    :reader exception_code
    :initarg :exception_code
    :type cl:integer
    :initform 0)
   (exception_message
    :reader exception_message
    :initarg :exception_message
    :type cl:string
    :initform ""))
)

(cl:defclass RobotInfo (<RobotInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<RobotInfo> is deprecated: use dg_msgs-msg:RobotInfo instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:robot_name-val is deprecated.  Use dg_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'robot_model-val :lambda-list '(m))
(cl:defmethod robot_model-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:robot_model-val is deprecated.  Use dg_msgs-msg:robot_model instead.")
  (robot_model m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state-val is deprecated.  Use dg_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:battery_level-val is deprecated.  Use dg_msgs-msg:battery_level instead.")
  (battery_level m))

(cl:ensure-generic-function 'exception_code-val :lambda-list '(m))
(cl:defmethod exception_code-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:exception_code-val is deprecated.  Use dg_msgs-msg:exception_code instead.")
  (exception_code m))

(cl:ensure-generic-function 'exception_message-val :lambda-list '(m))
(cl:defmethod exception_message-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:exception_message-val is deprecated.  Use dg_msgs-msg:exception_message instead.")
  (exception_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInfo>) ostream)
  "Serializes a message object of type '<RobotInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let* ((signed (cl:slot-value msg 'battery_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'exception_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'exception_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'exception_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInfo>) istream)
  "Deserializes a message object of type '<RobotInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exception_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'exception_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'exception_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInfo>)))
  "Returns string type for a message object of type '<RobotInfo>"
  "dg_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfo)))
  "Returns string type for a message object of type 'RobotInfo"
  "dg_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInfo>)))
  "Returns md5sum for a message object of type '<RobotInfo>"
  "cd6f740e81722148b147dc17f6287738")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInfo)))
  "Returns md5sum for a message object of type 'RobotInfo"
  "cd6f740e81722148b147dc17f6287738")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInfo>)))
  "Returns full string definition for message of type '<RobotInfo>"
  (cl:format cl:nil "string robot_name~%string robot_model~%string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）~%int32 battery_level # 0 = empty, 100 = full~%int32 exception_code        # 异常码~%string exception_message    # 异常信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInfo)))
  "Returns full string definition for message of type 'RobotInfo"
  (cl:format cl:nil "string robot_name~%string robot_model~%string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）~%int32 battery_level # 0 = empty, 100 = full~%int32 exception_code        # 异常码~%string exception_message    # 异常信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     4 (cl:length (cl:slot-value msg 'robot_model))
     4 (cl:length (cl:slot-value msg 'state))
     4
     4
     4 (cl:length (cl:slot-value msg 'exception_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInfo
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':robot_model (robot_model msg))
    (cl:cons ':state (state msg))
    (cl:cons ':battery_level (battery_level msg))
    (cl:cons ':exception_code (exception_code msg))
    (cl:cons ':exception_message (exception_message msg))
))
