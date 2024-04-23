; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmSpeed-request.msg.html

(cl:defclass <RobotArmSpeed-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotArmSpeed-request (<RobotArmSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmSpeed-request> is deprecated: use dg_msgs-srv:RobotArmSpeed-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <RobotArmSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:speed-val is deprecated.  Use dg_msgs-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmSpeed-request>) ostream)
  "Serializes a message object of type '<RobotArmSpeed-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmSpeed-request>) istream)
  "Deserializes a message object of type '<RobotArmSpeed-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmSpeed-request>)))
  "Returns string type for a service object of type '<RobotArmSpeed-request>"
  "dg_msgs/RobotArmSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmSpeed-request)))
  "Returns string type for a service object of type 'RobotArmSpeed-request"
  "dg_msgs/RobotArmSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmSpeed-request>)))
  "Returns md5sum for a message object of type '<RobotArmSpeed-request>"
  "8f2a3742ee2fc517393c2bd0f5bce150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmSpeed-request)))
  "Returns md5sum for a message object of type 'RobotArmSpeed-request"
  "8f2a3742ee2fc517393c2bd0f5bce150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmSpeed-request>)))
  "Returns full string definition for message of type '<RobotArmSpeed-request>"
  (cl:format cl:nil "string number       # 设备编码~%float32 speed       # 机械臂速度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmSpeed-request)))
  "Returns full string definition for message of type 'RobotArmSpeed-request"
  (cl:format cl:nil "string number       # 设备编码~%float32 speed       # 机械臂速度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmSpeed-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmSpeed-request
    (cl:cons ':number (number msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude RobotArmSpeed-response.msg.html

(cl:defclass <RobotArmSpeed-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RobotArmSpeed-response (<RobotArmSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmSpeed-response> is deprecated: use dg_msgs-srv:RobotArmSpeed-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RobotArmSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <RobotArmSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:err_msg-val is deprecated.  Use dg_msgs-srv:err_msg instead.")
  (err_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmSpeed-response>) ostream)
  "Serializes a message object of type '<RobotArmSpeed-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmSpeed-response>) istream)
  "Deserializes a message object of type '<RobotArmSpeed-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmSpeed-response>)))
  "Returns string type for a service object of type '<RobotArmSpeed-response>"
  "dg_msgs/RobotArmSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmSpeed-response)))
  "Returns string type for a service object of type 'RobotArmSpeed-response"
  "dg_msgs/RobotArmSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmSpeed-response>)))
  "Returns md5sum for a message object of type '<RobotArmSpeed-response>"
  "8f2a3742ee2fc517393c2bd0f5bce150")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmSpeed-response)))
  "Returns md5sum for a message object of type 'RobotArmSpeed-response"
  "8f2a3742ee2fc517393c2bd0f5bce150")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmSpeed-response>)))
  "Returns full string definition for message of type '<RobotArmSpeed-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%string err_msg      # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmSpeed-response)))
  "Returns full string definition for message of type 'RobotArmSpeed-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%string err_msg      # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmSpeed-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'err_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmSpeed-response
    (cl:cons ':result (result msg))
    (cl:cons ':err_msg (err_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmSpeed)))
  'RobotArmSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmSpeed)))
  'RobotArmSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmSpeed)))
  "Returns string type for a service object of type '<RobotArmSpeed>"
  "dg_msgs/RobotArmSpeed")