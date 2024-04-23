; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmStandby-request.msg.html

(cl:defclass <RobotArmStandby-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform ""))
)

(cl:defclass RobotArmStandby-request (<RobotArmStandby-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmStandby-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmStandby-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmStandby-request> is deprecated: use dg_msgs-srv:RobotArmStandby-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmStandby-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmStandby-request>) ostream)
  "Serializes a message object of type '<RobotArmStandby-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmStandby-request>) istream)
  "Deserializes a message object of type '<RobotArmStandby-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmStandby-request>)))
  "Returns string type for a service object of type '<RobotArmStandby-request>"
  "dg_msgs/RobotArmStandbyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmStandby-request)))
  "Returns string type for a service object of type 'RobotArmStandby-request"
  "dg_msgs/RobotArmStandbyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmStandby-request>)))
  "Returns md5sum for a message object of type '<RobotArmStandby-request>"
  "30dd77b2b7250d51d2b5b47933ff7787")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmStandby-request)))
  "Returns md5sum for a message object of type 'RobotArmStandby-request"
  "30dd77b2b7250d51d2b5b47933ff7787")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmStandby-request>)))
  "Returns full string definition for message of type '<RobotArmStandby-request>"
  (cl:format cl:nil "string number       # 设备编码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmStandby-request)))
  "Returns full string definition for message of type 'RobotArmStandby-request"
  (cl:format cl:nil "string number       # 设备编码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmStandby-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmStandby-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmStandby-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude RobotArmStandby-response.msg.html

(cl:defclass <RobotArmStandby-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:string
    :initform ""))
)

(cl:defclass RobotArmStandby-response (<RobotArmStandby-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmStandby-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmStandby-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmStandby-response> is deprecated: use dg_msgs-srv:RobotArmStandby-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RobotArmStandby-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <RobotArmStandby-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:err_msg-val is deprecated.  Use dg_msgs-srv:err_msg instead.")
  (err_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmStandby-response>) ostream)
  "Serializes a message object of type '<RobotArmStandby-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'err_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'err_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmStandby-response>) istream)
  "Deserializes a message object of type '<RobotArmStandby-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'err_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmStandby-response>)))
  "Returns string type for a service object of type '<RobotArmStandby-response>"
  "dg_msgs/RobotArmStandbyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmStandby-response)))
  "Returns string type for a service object of type 'RobotArmStandby-response"
  "dg_msgs/RobotArmStandbyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmStandby-response>)))
  "Returns md5sum for a message object of type '<RobotArmStandby-response>"
  "30dd77b2b7250d51d2b5b47933ff7787")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmStandby-response)))
  "Returns md5sum for a message object of type 'RobotArmStandby-response"
  "30dd77b2b7250d51d2b5b47933ff7787")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmStandby-response>)))
  "Returns full string definition for message of type '<RobotArmStandby-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%string err_msg      # 错误信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmStandby-response)))
  "Returns full string definition for message of type 'RobotArmStandby-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%string err_msg      # 错误信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmStandby-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'err_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmStandby-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmStandby-response
    (cl:cons ':result (result msg))
    (cl:cons ':err_msg (err_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmStandby)))
  'RobotArmStandby-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmStandby)))
  'RobotArmStandby-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmStandby)))
  "Returns string type for a service object of type '<RobotArmStandby>"
  "dg_msgs/RobotArmStandby")