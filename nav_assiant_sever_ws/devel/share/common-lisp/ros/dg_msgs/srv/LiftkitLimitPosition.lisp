; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude LiftkitLimitPosition-request.msg.html

(cl:defclass <LiftkitLimitPosition-request> (roslisp-msg-protocol:ros-message)
  ((limit_min
    :reader limit_min
    :initarg :limit_min
    :type cl:float
    :initform 0.0)
   (limit_max
    :reader limit_max
    :initarg :limit_max
    :type cl:float
    :initform 0.0))
)

(cl:defclass LiftkitLimitPosition-request (<LiftkitLimitPosition-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiftkitLimitPosition-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiftkitLimitPosition-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LiftkitLimitPosition-request> is deprecated: use dg_msgs-srv:LiftkitLimitPosition-request instead.")))

(cl:ensure-generic-function 'limit_min-val :lambda-list '(m))
(cl:defmethod limit_min-val ((m <LiftkitLimitPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:limit_min-val is deprecated.  Use dg_msgs-srv:limit_min instead.")
  (limit_min m))

(cl:ensure-generic-function 'limit_max-val :lambda-list '(m))
(cl:defmethod limit_max-val ((m <LiftkitLimitPosition-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:limit_max-val is deprecated.  Use dg_msgs-srv:limit_max instead.")
  (limit_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiftkitLimitPosition-request>) ostream)
  "Serializes a message object of type '<LiftkitLimitPosition-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'limit_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'limit_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiftkitLimitPosition-request>) istream)
  "Deserializes a message object of type '<LiftkitLimitPosition-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_max) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiftkitLimitPosition-request>)))
  "Returns string type for a service object of type '<LiftkitLimitPosition-request>"
  "dg_msgs/LiftkitLimitPositionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftkitLimitPosition-request)))
  "Returns string type for a service object of type 'LiftkitLimitPosition-request"
  "dg_msgs/LiftkitLimitPositionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiftkitLimitPosition-request>)))
  "Returns md5sum for a message object of type '<LiftkitLimitPosition-request>"
  "9893256c569fa5e6bf99f99fa5ed8fd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiftkitLimitPosition-request)))
  "Returns md5sum for a message object of type 'LiftkitLimitPosition-request"
  "9893256c569fa5e6bf99f99fa5ed8fd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiftkitLimitPosition-request>)))
  "Returns full string definition for message of type '<LiftkitLimitPosition-request>"
  (cl:format cl:nil "float32 limit_min~%float32 limit_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiftkitLimitPosition-request)))
  "Returns full string definition for message of type 'LiftkitLimitPosition-request"
  (cl:format cl:nil "float32 limit_min~%float32 limit_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiftkitLimitPosition-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiftkitLimitPosition-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LiftkitLimitPosition-request
    (cl:cons ':limit_min (limit_min msg))
    (cl:cons ':limit_max (limit_max msg))
))
;//! \htmlinclude LiftkitLimitPosition-response.msg.html

(cl:defclass <LiftkitLimitPosition-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass LiftkitLimitPosition-response (<LiftkitLimitPosition-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiftkitLimitPosition-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiftkitLimitPosition-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LiftkitLimitPosition-response> is deprecated: use dg_msgs-srv:LiftkitLimitPosition-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LiftkitLimitPosition-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiftkitLimitPosition-response>) ostream)
  "Serializes a message object of type '<LiftkitLimitPosition-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiftkitLimitPosition-response>) istream)
  "Deserializes a message object of type '<LiftkitLimitPosition-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiftkitLimitPosition-response>)))
  "Returns string type for a service object of type '<LiftkitLimitPosition-response>"
  "dg_msgs/LiftkitLimitPositionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftkitLimitPosition-response)))
  "Returns string type for a service object of type 'LiftkitLimitPosition-response"
  "dg_msgs/LiftkitLimitPositionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiftkitLimitPosition-response>)))
  "Returns md5sum for a message object of type '<LiftkitLimitPosition-response>"
  "9893256c569fa5e6bf99f99fa5ed8fd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiftkitLimitPosition-response)))
  "Returns md5sum for a message object of type 'LiftkitLimitPosition-response"
  "9893256c569fa5e6bf99f99fa5ed8fd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiftkitLimitPosition-response>)))
  "Returns full string definition for message of type '<LiftkitLimitPosition-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiftkitLimitPosition-response)))
  "Returns full string definition for message of type 'LiftkitLimitPosition-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiftkitLimitPosition-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiftkitLimitPosition-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LiftkitLimitPosition-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LiftkitLimitPosition)))
  'LiftkitLimitPosition-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LiftkitLimitPosition)))
  'LiftkitLimitPosition-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftkitLimitPosition)))
  "Returns string type for a service object of type '<LiftkitLimitPosition>"
  "dg_msgs/LiftkitLimitPosition")