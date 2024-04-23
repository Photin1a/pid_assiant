; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmTeaching-request.msg.html

(cl:defclass <RobotArmTeaching-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (teaching
    :reader teaching
    :initarg :teaching
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotArmTeaching-request (<RobotArmTeaching-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmTeaching-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmTeaching-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmTeaching-request> is deprecated: use dg_msgs-srv:RobotArmTeaching-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmTeaching-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'teaching-val :lambda-list '(m))
(cl:defmethod teaching-val ((m <RobotArmTeaching-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:teaching-val is deprecated.  Use dg_msgs-srv:teaching instead.")
  (teaching m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmTeaching-request>) ostream)
  "Serializes a message object of type '<RobotArmTeaching-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'teaching) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmTeaching-request>) istream)
  "Deserializes a message object of type '<RobotArmTeaching-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'teaching) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmTeaching-request>)))
  "Returns string type for a service object of type '<RobotArmTeaching-request>"
  "dg_msgs/RobotArmTeachingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmTeaching-request)))
  "Returns string type for a service object of type 'RobotArmTeaching-request"
  "dg_msgs/RobotArmTeachingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmTeaching-request>)))
  "Returns md5sum for a message object of type '<RobotArmTeaching-request>"
  "e98776d51c881f8420639834d3ff8ee3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmTeaching-request)))
  "Returns md5sum for a message object of type 'RobotArmTeaching-request"
  "e98776d51c881f8420639834d3ff8ee3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmTeaching-request>)))
  "Returns full string definition for message of type '<RobotArmTeaching-request>"
  (cl:format cl:nil "string number       # 设备编码~%bool teaching       # true：打开    false：关闭~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmTeaching-request)))
  "Returns full string definition for message of type 'RobotArmTeaching-request"
  (cl:format cl:nil "string number       # 设备编码~%bool teaching       # true：打开    false：关闭~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmTeaching-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmTeaching-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmTeaching-request
    (cl:cons ':number (number msg))
    (cl:cons ':teaching (teaching msg))
))
;//! \htmlinclude RobotArmTeaching-response.msg.html

(cl:defclass <RobotArmTeaching-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotArmTeaching-response (<RobotArmTeaching-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmTeaching-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmTeaching-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmTeaching-response> is deprecated: use dg_msgs-srv:RobotArmTeaching-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <RobotArmTeaching-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmTeaching-response>) ostream)
  "Serializes a message object of type '<RobotArmTeaching-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmTeaching-response>) istream)
  "Deserializes a message object of type '<RobotArmTeaching-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmTeaching-response>)))
  "Returns string type for a service object of type '<RobotArmTeaching-response>"
  "dg_msgs/RobotArmTeachingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmTeaching-response)))
  "Returns string type for a service object of type 'RobotArmTeaching-response"
  "dg_msgs/RobotArmTeachingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmTeaching-response>)))
  "Returns md5sum for a message object of type '<RobotArmTeaching-response>"
  "e98776d51c881f8420639834d3ff8ee3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmTeaching-response)))
  "Returns md5sum for a message object of type 'RobotArmTeaching-response"
  "e98776d51c881f8420639834d3ff8ee3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmTeaching-response>)))
  "Returns full string definition for message of type '<RobotArmTeaching-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmTeaching-response)))
  "Returns full string definition for message of type 'RobotArmTeaching-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmTeaching-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmTeaching-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmTeaching-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmTeaching)))
  'RobotArmTeaching-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmTeaching)))
  'RobotArmTeaching-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmTeaching)))
  "Returns string type for a service object of type '<RobotArmTeaching>"
  "dg_msgs/RobotArmTeaching")