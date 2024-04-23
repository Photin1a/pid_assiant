; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude GetNavMode-request.msg.html

(cl:defclass <GetNavMode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetNavMode-request (<GetNavMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetNavMode-request> is deprecated: use dg_msgs-srv:GetNavMode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavMode-request>) ostream)
  "Serializes a message object of type '<GetNavMode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavMode-request>) istream)
  "Deserializes a message object of type '<GetNavMode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavMode-request>)))
  "Returns string type for a service object of type '<GetNavMode-request>"
  "dg_msgs/GetNavModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavMode-request)))
  "Returns string type for a service object of type 'GetNavMode-request"
  "dg_msgs/GetNavModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavMode-request>)))
  "Returns md5sum for a message object of type '<GetNavMode-request>"
  "6da4714a9065b59db72a6e63fec004bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavMode-request)))
  "Returns md5sum for a message object of type 'GetNavMode-request"
  "6da4714a9065b59db72a6e63fec004bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavMode-request>)))
  "Returns full string definition for message of type '<GetNavMode-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavMode-request)))
  "Returns full string definition for message of type 'GetNavMode-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavMode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavMode-request
))
;//! \htmlinclude GetNavMode-response.msg.html

(cl:defclass <GetNavMode-response> (roslisp-msg-protocol:ros-message)
  ((nav_mode
    :reader nav_mode
    :initarg :nav_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass GetNavMode-response (<GetNavMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetNavMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetNavMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetNavMode-response> is deprecated: use dg_msgs-srv:GetNavMode-response instead.")))

(cl:ensure-generic-function 'nav_mode-val :lambda-list '(m))
(cl:defmethod nav_mode-val ((m <GetNavMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:nav_mode-val is deprecated.  Use dg_msgs-srv:nav_mode instead.")
  (nav_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetNavMode-response>) ostream)
  "Serializes a message object of type '<GetNavMode-response>"
  (cl:let* ((signed (cl:slot-value msg 'nav_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetNavMode-response>) istream)
  "Deserializes a message object of type '<GetNavMode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nav_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetNavMode-response>)))
  "Returns string type for a service object of type '<GetNavMode-response>"
  "dg_msgs/GetNavModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavMode-response)))
  "Returns string type for a service object of type 'GetNavMode-response"
  "dg_msgs/GetNavModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetNavMode-response>)))
  "Returns md5sum for a message object of type '<GetNavMode-response>"
  "6da4714a9065b59db72a6e63fec004bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetNavMode-response)))
  "Returns md5sum for a message object of type 'GetNavMode-response"
  "6da4714a9065b59db72a6e63fec004bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetNavMode-response>)))
  "Returns full string definition for message of type '<GetNavMode-response>"
  (cl:format cl:nil "int32 nav_mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetNavMode-response)))
  "Returns full string definition for message of type 'GetNavMode-response"
  (cl:format cl:nil "int32 nav_mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetNavMode-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetNavMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetNavMode-response
    (cl:cons ':nav_mode (nav_mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetNavMode)))
  'GetNavMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetNavMode)))
  'GetNavMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetNavMode)))
  "Returns string type for a service object of type '<GetNavMode>"
  "dg_msgs/GetNavMode")