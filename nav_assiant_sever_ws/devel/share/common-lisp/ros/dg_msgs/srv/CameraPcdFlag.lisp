; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude CameraPcdFlag-request.msg.html

(cl:defclass <CameraPcdFlag-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraPcdFlag-request (<CameraPcdFlag-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraPcdFlag-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraPcdFlag-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CameraPcdFlag-request> is deprecated: use dg_msgs-srv:CameraPcdFlag-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <CameraPcdFlag-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:flag-val is deprecated.  Use dg_msgs-srv:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraPcdFlag-request>) ostream)
  "Serializes a message object of type '<CameraPcdFlag-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraPcdFlag-request>) istream)
  "Deserializes a message object of type '<CameraPcdFlag-request>"
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraPcdFlag-request>)))
  "Returns string type for a service object of type '<CameraPcdFlag-request>"
  "dg_msgs/CameraPcdFlagRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraPcdFlag-request)))
  "Returns string type for a service object of type 'CameraPcdFlag-request"
  "dg_msgs/CameraPcdFlagRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraPcdFlag-request>)))
  "Returns md5sum for a message object of type '<CameraPcdFlag-request>"
  "da447c1866b277a6644b3e27c876d9c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraPcdFlag-request)))
  "Returns md5sum for a message object of type 'CameraPcdFlag-request"
  "da447c1866b277a6644b3e27c876d9c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraPcdFlag-request>)))
  "Returns full string definition for message of type '<CameraPcdFlag-request>"
  (cl:format cl:nil "bool flag #是否打开相机的点云输出接口~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraPcdFlag-request)))
  "Returns full string definition for message of type 'CameraPcdFlag-request"
  (cl:format cl:nil "bool flag #是否打开相机的点云输出接口~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraPcdFlag-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraPcdFlag-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraPcdFlag-request
    (cl:cons ':flag (flag msg))
))
;//! \htmlinclude CameraPcdFlag-response.msg.html

(cl:defclass <CameraPcdFlag-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0))
)

(cl:defclass CameraPcdFlag-response (<CameraPcdFlag-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraPcdFlag-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraPcdFlag-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CameraPcdFlag-response> is deprecated: use dg_msgs-srv:CameraPcdFlag-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <CameraPcdFlag-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:ret-val is deprecated.  Use dg_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraPcdFlag-response>) ostream)
  "Serializes a message object of type '<CameraPcdFlag-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraPcdFlag-response>) istream)
  "Deserializes a message object of type '<CameraPcdFlag-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraPcdFlag-response>)))
  "Returns string type for a service object of type '<CameraPcdFlag-response>"
  "dg_msgs/CameraPcdFlagResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraPcdFlag-response)))
  "Returns string type for a service object of type 'CameraPcdFlag-response"
  "dg_msgs/CameraPcdFlagResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraPcdFlag-response>)))
  "Returns md5sum for a message object of type '<CameraPcdFlag-response>"
  "da447c1866b277a6644b3e27c876d9c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraPcdFlag-response)))
  "Returns md5sum for a message object of type 'CameraPcdFlag-response"
  "da447c1866b277a6644b3e27c876d9c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraPcdFlag-response>)))
  "Returns full string definition for message of type '<CameraPcdFlag-response>"
  (cl:format cl:nil "int32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraPcdFlag-response)))
  "Returns full string definition for message of type 'CameraPcdFlag-response"
  (cl:format cl:nil "int32 ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraPcdFlag-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraPcdFlag-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraPcdFlag-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraPcdFlag)))
  'CameraPcdFlag-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraPcdFlag)))
  'CameraPcdFlag-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraPcdFlag)))
  "Returns string type for a service object of type '<CameraPcdFlag>"
  "dg_msgs/CameraPcdFlag")