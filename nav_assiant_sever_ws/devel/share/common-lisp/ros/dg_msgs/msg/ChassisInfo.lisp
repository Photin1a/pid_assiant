; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude ChassisInfo.msg.html

(cl:defclass <ChassisInfo> (roslisp-msg-protocol:ros-message)
  ((equipment
    :reader equipment
    :initarg :equipment
    :type dg_msgs-msg:EquipmentCommon
    :initform (cl:make-instance 'dg_msgs-msg:EquipmentCommon))
   (min_linear_speed
    :reader min_linear_speed
    :initarg :min_linear_speed
    :type cl:float
    :initform 0.0)
   (max_linear_speed
    :reader max_linear_speed
    :initarg :max_linear_speed
    :type cl:float
    :initform 0.0)
   (linear_speed_scaling
    :reader linear_speed_scaling
    :initarg :linear_speed_scaling
    :type cl:float
    :initform 0.0)
   (min_angular_speed
    :reader min_angular_speed
    :initarg :min_angular_speed
    :type cl:float
    :initform 0.0)
   (max_angular_speed
    :reader max_angular_speed
    :initarg :max_angular_speed
    :type cl:float
    :initform 0.0)
   (angular_speed_scaling
    :reader angular_speed_scaling
    :initarg :angular_speed_scaling
    :type cl:float
    :initform 0.0))
)

(cl:defclass ChassisInfo (<ChassisInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<ChassisInfo> is deprecated: use dg_msgs-msg:ChassisInfo instead.")))

(cl:ensure-generic-function 'equipment-val :lambda-list '(m))
(cl:defmethod equipment-val ((m <ChassisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:equipment-val is deprecated.  Use dg_msgs-msg:equipment instead.")
  (equipment m))

(cl:ensure-generic-function 'min_linear_speed-val :lambda-list '(m))
(cl:defmethod min_linear_speed-val ((m <ChassisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:min_linear_speed-val is deprecated.  Use dg_msgs-msg:min_linear_speed instead.")
  (min_linear_speed m))

(cl:ensure-generic-function 'max_linear_speed-val :lambda-list '(m))
(cl:defmethod max_linear_speed-val ((m <ChassisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:max_linear_speed-val is deprecated.  Use dg_msgs-msg:max_linear_speed instead.")
  (max_linear_speed m))

(cl:ensure-generic-function 'linear_speed_scaling-val :lambda-list '(m))
(cl:defmethod linear_speed_scaling-val ((m <ChassisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:linear_speed_scaling-val is deprecated.  Use dg_msgs-msg:linear_speed_scaling instead.")
  (linear_speed_scaling m))

(cl:ensure-generic-function 'min_angular_speed-val :lambda-list '(m))
(cl:defmethod min_angular_speed-val ((m <ChassisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:min_angular_speed-val is deprecated.  Use dg_msgs-msg:min_angular_speed instead.")
  (min_angular_speed m))

(cl:ensure-generic-function 'max_angular_speed-val :lambda-list '(m))
(cl:defmethod max_angular_speed-val ((m <ChassisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:max_angular_speed-val is deprecated.  Use dg_msgs-msg:max_angular_speed instead.")
  (max_angular_speed m))

(cl:ensure-generic-function 'angular_speed_scaling-val :lambda-list '(m))
(cl:defmethod angular_speed_scaling-val ((m <ChassisInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:angular_speed_scaling-val is deprecated.  Use dg_msgs-msg:angular_speed_scaling instead.")
  (angular_speed_scaling m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisInfo>) ostream)
  "Serializes a message object of type '<ChassisInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'equipment) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_speed_scaling))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_angular_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_angular_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_speed_scaling))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisInfo>) istream)
  "Deserializes a message object of type '<ChassisInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'equipment) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_linear_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_speed_scaling) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_angular_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angular_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_speed_scaling) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisInfo>)))
  "Returns string type for a message object of type '<ChassisInfo>"
  "dg_msgs/ChassisInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisInfo)))
  "Returns string type for a message object of type 'ChassisInfo"
  "dg_msgs/ChassisInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisInfo>)))
  "Returns md5sum for a message object of type '<ChassisInfo>"
  "b34e814c1edbbed19ddf136cbfcaad5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisInfo)))
  "Returns md5sum for a message object of type 'ChassisInfo"
  "b34e814c1edbbed19ddf136cbfcaad5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisInfo>)))
  "Returns full string definition for message of type '<ChassisInfo>"
  (cl:format cl:nil "EquipmentCommon equipment~%float32 min_linear_speed~%float32 max_linear_speed~%float32 linear_speed_scaling~%float32 min_angular_speed~%float32 max_angular_speed~%float32 angular_speed_scaling~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisInfo)))
  "Returns full string definition for message of type 'ChassisInfo"
  (cl:format cl:nil "EquipmentCommon equipment~%float32 min_linear_speed~%float32 max_linear_speed~%float32 linear_speed_scaling~%float32 min_angular_speed~%float32 max_angular_speed~%float32 angular_speed_scaling~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'equipment))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisInfo
    (cl:cons ':equipment (equipment msg))
    (cl:cons ':min_linear_speed (min_linear_speed msg))
    (cl:cons ':max_linear_speed (max_linear_speed msg))
    (cl:cons ':linear_speed_scaling (linear_speed_scaling msg))
    (cl:cons ':min_angular_speed (min_angular_speed msg))
    (cl:cons ':max_angular_speed (max_angular_speed msg))
    (cl:cons ':angular_speed_scaling (angular_speed_scaling msg))
))
