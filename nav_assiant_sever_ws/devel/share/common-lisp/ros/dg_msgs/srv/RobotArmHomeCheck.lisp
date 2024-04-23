; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmHomeCheck-request.msg.html

(cl:defclass <RobotArmHomeCheck-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform ""))
)

(cl:defclass RobotArmHomeCheck-request (<RobotArmHomeCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmHomeCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmHomeCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmHomeCheck-request> is deprecated: use dg_msgs-srv:RobotArmHomeCheck-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmHomeCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmHomeCheck-request>) ostream)
  "Serializes a message object of type '<RobotArmHomeCheck-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmHomeCheck-request>) istream)
  "Deserializes a message object of type '<RobotArmHomeCheck-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmHomeCheck-request>)))
  "Returns string type for a service object of type '<RobotArmHomeCheck-request>"
  "dg_msgs/RobotArmHomeCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmHomeCheck-request)))
  "Returns string type for a service object of type 'RobotArmHomeCheck-request"
  "dg_msgs/RobotArmHomeCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmHomeCheck-request>)))
  "Returns md5sum for a message object of type '<RobotArmHomeCheck-request>"
  "629ce3f7e5bc2f333e9af520c070ef5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmHomeCheck-request)))
  "Returns md5sum for a message object of type 'RobotArmHomeCheck-request"
  "629ce3f7e5bc2f333e9af520c070ef5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmHomeCheck-request>)))
  "Returns full string definition for message of type '<RobotArmHomeCheck-request>"
  (cl:format cl:nil "string number      # 设备组编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmHomeCheck-request)))
  "Returns full string definition for message of type 'RobotArmHomeCheck-request"
  (cl:format cl:nil "string number      # 设备组编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmHomeCheck-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmHomeCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmHomeCheck-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude RobotArmHomeCheck-response.msg.html

(cl:defclass <RobotArmHomeCheck-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotArmHomeCheck-response (<RobotArmHomeCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmHomeCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmHomeCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmHomeCheck-response> is deprecated: use dg_msgs-srv:RobotArmHomeCheck-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotArmHomeCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:ret-val is deprecated.  Use dg_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmHomeCheck-response>) ostream)
  "Serializes a message object of type '<RobotArmHomeCheck-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmHomeCheck-response>) istream)
  "Deserializes a message object of type '<RobotArmHomeCheck-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmHomeCheck-response>)))
  "Returns string type for a service object of type '<RobotArmHomeCheck-response>"
  "dg_msgs/RobotArmHomeCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmHomeCheck-response)))
  "Returns string type for a service object of type 'RobotArmHomeCheck-response"
  "dg_msgs/RobotArmHomeCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmHomeCheck-response>)))
  "Returns md5sum for a message object of type '<RobotArmHomeCheck-response>"
  "629ce3f7e5bc2f333e9af520c070ef5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmHomeCheck-response)))
  "Returns md5sum for a message object of type 'RobotArmHomeCheck-response"
  "629ce3f7e5bc2f333e9af520c070ef5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmHomeCheck-response>)))
  "Returns full string definition for message of type '<RobotArmHomeCheck-response>"
  (cl:format cl:nil "int32 ret          #0表示在Home初始位置~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmHomeCheck-response)))
  "Returns full string definition for message of type 'RobotArmHomeCheck-response"
  (cl:format cl:nil "int32 ret          #0表示在Home初始位置~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmHomeCheck-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmHomeCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmHomeCheck-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmHomeCheck)))
  'RobotArmHomeCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmHomeCheck)))
  'RobotArmHomeCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmHomeCheck)))
  "Returns string type for a service object of type '<RobotArmHomeCheck>"
  "dg_msgs/RobotArmHomeCheck")