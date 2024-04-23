; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude EquipmentCommon.msg.html

(cl:defclass <EquipmentCommon> (roslisp-msg-protocol:ros-message)
  ((equipment_id
    :reader equipment_id
    :initarg :equipment_id
    :type cl:integer
    :initform 0)
   (equipment_name
    :reader equipment_name
    :initarg :equipment_name
    :type cl:string
    :initform "")
   (connected
    :reader connected
    :initarg :connected
    :type cl:boolean
    :initform cl:nil)
   (connected_time
    :reader connected_time
    :initarg :connected_time
    :type cl:integer
    :initform 0)
   (model
    :reader model
    :initarg :model
    :type cl:string
    :initform "")
   (manufacturer
    :reader manufacturer
    :initarg :manufacturer
    :type cl:string
    :initform ""))
)

(cl:defclass EquipmentCommon (<EquipmentCommon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EquipmentCommon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EquipmentCommon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<EquipmentCommon> is deprecated: use dg_msgs-msg:EquipmentCommon instead.")))

(cl:ensure-generic-function 'equipment_id-val :lambda-list '(m))
(cl:defmethod equipment_id-val ((m <EquipmentCommon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:equipment_id-val is deprecated.  Use dg_msgs-msg:equipment_id instead.")
  (equipment_id m))

(cl:ensure-generic-function 'equipment_name-val :lambda-list '(m))
(cl:defmethod equipment_name-val ((m <EquipmentCommon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:equipment_name-val is deprecated.  Use dg_msgs-msg:equipment_name instead.")
  (equipment_name m))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <EquipmentCommon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:connected-val is deprecated.  Use dg_msgs-msg:connected instead.")
  (connected m))

(cl:ensure-generic-function 'connected_time-val :lambda-list '(m))
(cl:defmethod connected_time-val ((m <EquipmentCommon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:connected_time-val is deprecated.  Use dg_msgs-msg:connected_time instead.")
  (connected_time m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <EquipmentCommon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:model-val is deprecated.  Use dg_msgs-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'manufacturer-val :lambda-list '(m))
(cl:defmethod manufacturer-val ((m <EquipmentCommon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:manufacturer-val is deprecated.  Use dg_msgs-msg:manufacturer instead.")
  (manufacturer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EquipmentCommon>) ostream)
  "Serializes a message object of type '<EquipmentCommon>"
  (cl:let* ((signed (cl:slot-value msg 'equipment_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'equipment_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'equipment_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connected_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'connected_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'connected_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'connected_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'connected_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'connected_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'connected_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'connected_time)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'manufacturer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'manufacturer))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EquipmentCommon>) istream)
  "Deserializes a message object of type '<EquipmentCommon>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'equipment_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'equipment_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'equipment_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'connected_time)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'manufacturer) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'manufacturer) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EquipmentCommon>)))
  "Returns string type for a message object of type '<EquipmentCommon>"
  "dg_msgs/EquipmentCommon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EquipmentCommon)))
  "Returns string type for a message object of type 'EquipmentCommon"
  "dg_msgs/EquipmentCommon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EquipmentCommon>)))
  "Returns md5sum for a message object of type '<EquipmentCommon>"
  "f069498b74d3b3fdeaf4df87eac49670")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EquipmentCommon)))
  "Returns md5sum for a message object of type 'EquipmentCommon"
  "f069498b74d3b3fdeaf4df87eac49670")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EquipmentCommon>)))
  "Returns full string definition for message of type '<EquipmentCommon>"
  (cl:format cl:nil "int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EquipmentCommon)))
  "Returns full string definition for message of type 'EquipmentCommon"
  (cl:format cl:nil "int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EquipmentCommon>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'equipment_name))
     1
     8
     4 (cl:length (cl:slot-value msg 'model))
     4 (cl:length (cl:slot-value msg 'manufacturer))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EquipmentCommon>))
  "Converts a ROS message object to a list"
  (cl:list 'EquipmentCommon
    (cl:cons ':equipment_id (equipment_id msg))
    (cl:cons ':equipment_name (equipment_name msg))
    (cl:cons ':connected (connected msg))
    (cl:cons ':connected_time (connected_time msg))
    (cl:cons ':model (model msg))
    (cl:cons ':manufacturer (manufacturer msg))
))
