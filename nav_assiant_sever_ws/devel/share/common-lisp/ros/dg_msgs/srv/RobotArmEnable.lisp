; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmEnable-request.msg.html

(cl:defclass <RobotArmEnable-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotArmEnable-request (<RobotArmEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmEnable-request> is deprecated: use dg_msgs-srv:RobotArmEnable-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <RobotArmEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:enable-val is deprecated.  Use dg_msgs-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmEnable-request>) ostream)
  "Serializes a message object of type '<RobotArmEnable-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmEnable-request>) istream)
  "Deserializes a message object of type '<RobotArmEnable-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmEnable-request>)))
  "Returns string type for a service object of type '<RobotArmEnable-request>"
  "dg_msgs/RobotArmEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmEnable-request)))
  "Returns string type for a service object of type 'RobotArmEnable-request"
  "dg_msgs/RobotArmEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmEnable-request>)))
  "Returns md5sum for a message object of type '<RobotArmEnable-request>"
  "41636440c4d7f34665aaa86499c20abd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmEnable-request)))
  "Returns md5sum for a message object of type 'RobotArmEnable-request"
  "41636440c4d7f34665aaa86499c20abd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmEnable-request>)))
  "Returns full string definition for message of type '<RobotArmEnable-request>"
  (cl:format cl:nil "string number       # 设备编码~%bool enable       # true：上使能    false：下使能~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmEnable-request)))
  "Returns full string definition for message of type 'RobotArmEnable-request"
  (cl:format cl:nil "string number       # 设备编码~%bool enable       # true：上使能    false：下使能~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmEnable-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmEnable-request
    (cl:cons ':number (number msg))
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude RobotArmEnable-response.msg.html

(cl:defclass <RobotArmEnable-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotArmEnable-response (<RobotArmEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmEnable-response> is deprecated: use dg_msgs-srv:RobotArmEnable-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RobotArmEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmEnable-response>) ostream)
  "Serializes a message object of type '<RobotArmEnable-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmEnable-response>) istream)
  "Deserializes a message object of type '<RobotArmEnable-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmEnable-response>)))
  "Returns string type for a service object of type '<RobotArmEnable-response>"
  "dg_msgs/RobotArmEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmEnable-response)))
  "Returns string type for a service object of type 'RobotArmEnable-response"
  "dg_msgs/RobotArmEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmEnable-response>)))
  "Returns md5sum for a message object of type '<RobotArmEnable-response>"
  "41636440c4d7f34665aaa86499c20abd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmEnable-response)))
  "Returns md5sum for a message object of type 'RobotArmEnable-response"
  "41636440c4d7f34665aaa86499c20abd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmEnable-response>)))
  "Returns full string definition for message of type '<RobotArmEnable-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmEnable-response)))
  "Returns full string definition for message of type 'RobotArmEnable-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmEnable-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmEnable-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmEnable)))
  'RobotArmEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmEnable)))
  'RobotArmEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmEnable)))
  "Returns string type for a service object of type '<RobotArmEnable>"
  "dg_msgs/RobotArmEnable")