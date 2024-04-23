; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude SpeedScale-request.msg.html

(cl:defclass <SpeedScale-request> (roslisp-msg-protocol:ros-message)
  ((linear_scale
    :reader linear_scale
    :initarg :linear_scale
    :type cl:float
    :initform 0.0)
   (angular_scale
    :reader angular_scale
    :initarg :angular_scale
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpeedScale-request (<SpeedScale-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedScale-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedScale-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SpeedScale-request> is deprecated: use dg_msgs-srv:SpeedScale-request instead.")))

(cl:ensure-generic-function 'linear_scale-val :lambda-list '(m))
(cl:defmethod linear_scale-val ((m <SpeedScale-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:linear_scale-val is deprecated.  Use dg_msgs-srv:linear_scale instead.")
  (linear_scale m))

(cl:ensure-generic-function 'angular_scale-val :lambda-list '(m))
(cl:defmethod angular_scale-val ((m <SpeedScale-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:angular_scale-val is deprecated.  Use dg_msgs-srv:angular_scale instead.")
  (angular_scale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedScale-request>) ostream)
  "Serializes a message object of type '<SpeedScale-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_scale))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedScale-request>) istream)
  "Deserializes a message object of type '<SpeedScale-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_scale) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_scale) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedScale-request>)))
  "Returns string type for a service object of type '<SpeedScale-request>"
  "dg_msgs/SpeedScaleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedScale-request)))
  "Returns string type for a service object of type 'SpeedScale-request"
  "dg_msgs/SpeedScaleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedScale-request>)))
  "Returns md5sum for a message object of type '<SpeedScale-request>"
  "4030281ced8d9af82eced28afd3f5782")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedScale-request)))
  "Returns md5sum for a message object of type 'SpeedScale-request"
  "4030281ced8d9af82eced28afd3f5782")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedScale-request>)))
  "Returns full string definition for message of type '<SpeedScale-request>"
  (cl:format cl:nil "float32 linear_scale~%float32 angular_scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedScale-request)))
  "Returns full string definition for message of type 'SpeedScale-request"
  (cl:format cl:nil "float32 linear_scale~%float32 angular_scale~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedScale-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedScale-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedScale-request
    (cl:cons ':linear_scale (linear_scale msg))
    (cl:cons ':angular_scale (angular_scale msg))
))
;//! \htmlinclude SpeedScale-response.msg.html

(cl:defclass <SpeedScale-response> (roslisp-msg-protocol:ros-message)
  ((cur_linear
    :reader cur_linear
    :initarg :cur_linear
    :type cl:float
    :initform 0.0)
   (cur_angular
    :reader cur_angular
    :initarg :cur_angular
    :type cl:float
    :initform 0.0))
)

(cl:defclass SpeedScale-response (<SpeedScale-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedScale-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedScale-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SpeedScale-response> is deprecated: use dg_msgs-srv:SpeedScale-response instead.")))

(cl:ensure-generic-function 'cur_linear-val :lambda-list '(m))
(cl:defmethod cur_linear-val ((m <SpeedScale-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:cur_linear-val is deprecated.  Use dg_msgs-srv:cur_linear instead.")
  (cur_linear m))

(cl:ensure-generic-function 'cur_angular-val :lambda-list '(m))
(cl:defmethod cur_angular-val ((m <SpeedScale-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:cur_angular-val is deprecated.  Use dg_msgs-srv:cur_angular instead.")
  (cur_angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedScale-response>) ostream)
  "Serializes a message object of type '<SpeedScale-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cur_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cur_angular))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedScale-response>) istream)
  "Deserializes a message object of type '<SpeedScale-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_linear) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_angular) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedScale-response>)))
  "Returns string type for a service object of type '<SpeedScale-response>"
  "dg_msgs/SpeedScaleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedScale-response)))
  "Returns string type for a service object of type 'SpeedScale-response"
  "dg_msgs/SpeedScaleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedScale-response>)))
  "Returns md5sum for a message object of type '<SpeedScale-response>"
  "4030281ced8d9af82eced28afd3f5782")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedScale-response)))
  "Returns md5sum for a message object of type 'SpeedScale-response"
  "4030281ced8d9af82eced28afd3f5782")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedScale-response>)))
  "Returns full string definition for message of type '<SpeedScale-response>"
  (cl:format cl:nil "float32 cur_linear~%float32 cur_angular~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedScale-response)))
  "Returns full string definition for message of type 'SpeedScale-response"
  (cl:format cl:nil "float32 cur_linear~%float32 cur_angular~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedScale-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedScale-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedScale-response
    (cl:cons ':cur_linear (cur_linear msg))
    (cl:cons ':cur_angular (cur_angular msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SpeedScale)))
  'SpeedScale-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SpeedScale)))
  'SpeedScale-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedScale)))
  "Returns string type for a service object of type '<SpeedScale>"
  "dg_msgs/SpeedScale")