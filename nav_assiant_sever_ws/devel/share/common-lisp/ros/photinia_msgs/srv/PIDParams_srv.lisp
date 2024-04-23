; Auto-generated. Do not edit!


(cl:in-package photinia_msgs-srv)


;//! \htmlinclude PIDParams_srv-request.msg.html

(cl:defclass <PIDParams_srv-request> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:string
    :initform "")
   (test_distance
    :reader test_distance
    :initarg :test_distance
    :type cl:float
    :initform 0.0)
   (max_linear
    :reader max_linear
    :initarg :max_linear
    :type cl:float
    :initform 0.0)
   (max_w
    :reader max_w
    :initarg :max_w
    :type cl:float
    :initform 0.0)
   (angle_p
    :reader angle_p
    :initarg :angle_p
    :type cl:float
    :initform 0.0)
   (angle_i
    :reader angle_i
    :initarg :angle_i
    :type cl:float
    :initform 0.0)
   (angle_d
    :reader angle_d
    :initarg :angle_d
    :type cl:float
    :initform 0.0)
   (linear_p
    :reader linear_p
    :initarg :linear_p
    :type cl:float
    :initform 0.0)
   (linear_i
    :reader linear_i
    :initarg :linear_i
    :type cl:float
    :initform 0.0)
   (linear_d
    :reader linear_d
    :initarg :linear_d
    :type cl:float
    :initform 0.0))
)

(cl:defclass PIDParams_srv-request (<PIDParams_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIDParams_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIDParams_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name photinia_msgs-srv:<PIDParams_srv-request> is deprecated: use photinia_msgs-srv:PIDParams_srv-request instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:time-val is deprecated.  Use photinia_msgs-srv:time instead.")
  (time m))

(cl:ensure-generic-function 'test_distance-val :lambda-list '(m))
(cl:defmethod test_distance-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:test_distance-val is deprecated.  Use photinia_msgs-srv:test_distance instead.")
  (test_distance m))

(cl:ensure-generic-function 'max_linear-val :lambda-list '(m))
(cl:defmethod max_linear-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:max_linear-val is deprecated.  Use photinia_msgs-srv:max_linear instead.")
  (max_linear m))

(cl:ensure-generic-function 'max_w-val :lambda-list '(m))
(cl:defmethod max_w-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:max_w-val is deprecated.  Use photinia_msgs-srv:max_w instead.")
  (max_w m))

(cl:ensure-generic-function 'angle_p-val :lambda-list '(m))
(cl:defmethod angle_p-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:angle_p-val is deprecated.  Use photinia_msgs-srv:angle_p instead.")
  (angle_p m))

(cl:ensure-generic-function 'angle_i-val :lambda-list '(m))
(cl:defmethod angle_i-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:angle_i-val is deprecated.  Use photinia_msgs-srv:angle_i instead.")
  (angle_i m))

(cl:ensure-generic-function 'angle_d-val :lambda-list '(m))
(cl:defmethod angle_d-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:angle_d-val is deprecated.  Use photinia_msgs-srv:angle_d instead.")
  (angle_d m))

(cl:ensure-generic-function 'linear_p-val :lambda-list '(m))
(cl:defmethod linear_p-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:linear_p-val is deprecated.  Use photinia_msgs-srv:linear_p instead.")
  (linear_p m))

(cl:ensure-generic-function 'linear_i-val :lambda-list '(m))
(cl:defmethod linear_i-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:linear_i-val is deprecated.  Use photinia_msgs-srv:linear_i instead.")
  (linear_i m))

(cl:ensure-generic-function 'linear_d-val :lambda-list '(m))
(cl:defmethod linear_d-val ((m <PIDParams_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:linear_d-val is deprecated.  Use photinia_msgs-srv:linear_d instead.")
  (linear_d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIDParams_srv-request>) ostream)
  "Serializes a message object of type '<PIDParams_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'test_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_i))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_p))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_i))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIDParams_srv-request>) istream)
  "Deserializes a message object of type '<PIDParams_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'test_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_w) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_p) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_i) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_d) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_p) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_i) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_d) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIDParams_srv-request>)))
  "Returns string type for a service object of type '<PIDParams_srv-request>"
  "photinia_msgs/PIDParams_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDParams_srv-request)))
  "Returns string type for a service object of type 'PIDParams_srv-request"
  "photinia_msgs/PIDParams_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIDParams_srv-request>)))
  "Returns md5sum for a message object of type '<PIDParams_srv-request>"
  "5ad8bacb8dea16aa1298169b29166847")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIDParams_srv-request)))
  "Returns md5sum for a message object of type 'PIDParams_srv-request"
  "5ad8bacb8dea16aa1298169b29166847")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIDParams_srv-request>)))
  "Returns full string definition for message of type '<PIDParams_srv-request>"
  (cl:format cl:nil "string time~%float64 test_distance~%float64 max_linear~%float64 max_w~%float64 angle_p~%float64 angle_i~%float64 angle_d~%float64 linear_p~%float64 linear_i~%float64 linear_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIDParams_srv-request)))
  "Returns full string definition for message of type 'PIDParams_srv-request"
  (cl:format cl:nil "string time~%float64 test_distance~%float64 max_linear~%float64 max_w~%float64 angle_p~%float64 angle_i~%float64 angle_d~%float64 linear_p~%float64 linear_i~%float64 linear_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIDParams_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'time))
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIDParams_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PIDParams_srv-request
    (cl:cons ':time (time msg))
    (cl:cons ':test_distance (test_distance msg))
    (cl:cons ':max_linear (max_linear msg))
    (cl:cons ':max_w (max_w msg))
    (cl:cons ':angle_p (angle_p msg))
    (cl:cons ':angle_i (angle_i msg))
    (cl:cons ':angle_d (angle_d msg))
    (cl:cons ':linear_p (linear_p msg))
    (cl:cons ':linear_i (linear_i msg))
    (cl:cons ':linear_d (linear_d msg))
))
;//! \htmlinclude PIDParams_srv-response.msg.html

(cl:defclass <PIDParams_srv-response> (roslisp-msg-protocol:ros-message)
  ((is_success
    :reader is_success
    :initarg :is_success
    :type cl:boolean
    :initform cl:nil)
   (detail
    :reader detail
    :initarg :detail
    :type cl:string
    :initform ""))
)

(cl:defclass PIDParams_srv-response (<PIDParams_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PIDParams_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PIDParams_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name photinia_msgs-srv:<PIDParams_srv-response> is deprecated: use photinia_msgs-srv:PIDParams_srv-response instead.")))

(cl:ensure-generic-function 'is_success-val :lambda-list '(m))
(cl:defmethod is_success-val ((m <PIDParams_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:is_success-val is deprecated.  Use photinia_msgs-srv:is_success instead.")
  (is_success m))

(cl:ensure-generic-function 'detail-val :lambda-list '(m))
(cl:defmethod detail-val ((m <PIDParams_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader photinia_msgs-srv:detail-val is deprecated.  Use photinia_msgs-srv:detail instead.")
  (detail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PIDParams_srv-response>) ostream)
  "Serializes a message object of type '<PIDParams_srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detail))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PIDParams_srv-response>) istream)
  "Deserializes a message object of type '<PIDParams_srv-response>"
    (cl:setf (cl:slot-value msg 'is_success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detail) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PIDParams_srv-response>)))
  "Returns string type for a service object of type '<PIDParams_srv-response>"
  "photinia_msgs/PIDParams_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDParams_srv-response)))
  "Returns string type for a service object of type 'PIDParams_srv-response"
  "photinia_msgs/PIDParams_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PIDParams_srv-response>)))
  "Returns md5sum for a message object of type '<PIDParams_srv-response>"
  "5ad8bacb8dea16aa1298169b29166847")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PIDParams_srv-response)))
  "Returns md5sum for a message object of type 'PIDParams_srv-response"
  "5ad8bacb8dea16aa1298169b29166847")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PIDParams_srv-response>)))
  "Returns full string definition for message of type '<PIDParams_srv-response>"
  (cl:format cl:nil "bool is_success  #pid设置成功：true    失败：false~%string detail~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PIDParams_srv-response)))
  "Returns full string definition for message of type 'PIDParams_srv-response"
  (cl:format cl:nil "bool is_success  #pid设置成功：true    失败：false~%string detail~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PIDParams_srv-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'detail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PIDParams_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PIDParams_srv-response
    (cl:cons ':is_success (is_success msg))
    (cl:cons ':detail (detail msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PIDParams_srv)))
  'PIDParams_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PIDParams_srv)))
  'PIDParams_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PIDParams_srv)))
  "Returns string type for a service object of type '<PIDParams_srv>"
  "photinia_msgs/PIDParams_srv")