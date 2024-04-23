; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude EmergencyStop-request.msg.html

(cl:defclass <EmergencyStop-request> (roslisp-msg-protocol:ros-message)
  ((stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EmergencyStop-request (<EmergencyStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<EmergencyStop-request> is deprecated: use dg_msgs-srv:EmergencyStop-request instead.")))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <EmergencyStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:stop-val is deprecated.  Use dg_msgs-srv:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStop-request>) ostream)
  "Serializes a message object of type '<EmergencyStop-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStop-request>) istream)
  "Deserializes a message object of type '<EmergencyStop-request>"
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStop-request>)))
  "Returns string type for a service object of type '<EmergencyStop-request>"
  "dg_msgs/EmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop-request)))
  "Returns string type for a service object of type 'EmergencyStop-request"
  "dg_msgs/EmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStop-request>)))
  "Returns md5sum for a message object of type '<EmergencyStop-request>"
  "565099d6fc107521bc92372f45b2bb01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStop-request)))
  "Returns md5sum for a message object of type 'EmergencyStop-request"
  "565099d6fc107521bc92372f45b2bb01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStop-request>)))
  "Returns full string definition for message of type '<EmergencyStop-request>"
  (cl:format cl:nil "bool stop       # true：急停    false：清除急停~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStop-request)))
  "Returns full string definition for message of type 'EmergencyStop-request"
  (cl:format cl:nil "bool stop       # true：急停    false：清除急停~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStop-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStop-request
    (cl:cons ':stop (stop msg))
))
;//! \htmlinclude EmergencyStop-response.msg.html

(cl:defclass <EmergencyStop-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass EmergencyStop-response (<EmergencyStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<EmergencyStop-response> is deprecated: use dg_msgs-srv:EmergencyStop-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EmergencyStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyStop-response>) ostream)
  "Serializes a message object of type '<EmergencyStop-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyStop-response>) istream)
  "Deserializes a message object of type '<EmergencyStop-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyStop-response>)))
  "Returns string type for a service object of type '<EmergencyStop-response>"
  "dg_msgs/EmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop-response)))
  "Returns string type for a service object of type 'EmergencyStop-response"
  "dg_msgs/EmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyStop-response>)))
  "Returns md5sum for a message object of type '<EmergencyStop-response>"
  "565099d6fc107521bc92372f45b2bb01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyStop-response)))
  "Returns md5sum for a message object of type 'EmergencyStop-response"
  "565099d6fc107521bc92372f45b2bb01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyStop-response>)))
  "Returns full string definition for message of type '<EmergencyStop-response>"
  (cl:format cl:nil "int32 result    # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyStop-response)))
  "Returns full string definition for message of type 'EmergencyStop-response"
  (cl:format cl:nil "int32 result    # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyStop-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyStop-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmergencyStop)))
  'EmergencyStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmergencyStop)))
  'EmergencyStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyStop)))
  "Returns string type for a service object of type '<EmergencyStop>"
  "dg_msgs/EmergencyStop")