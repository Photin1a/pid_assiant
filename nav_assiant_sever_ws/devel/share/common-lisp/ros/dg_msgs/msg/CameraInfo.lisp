; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude CameraInfo.msg.html

(cl:defclass <CameraInfo> (roslisp-msg-protocol:ros-message)
  ((equipment
    :reader equipment
    :initarg :equipment
    :type dg_msgs-msg:EquipmentCommon
    :initform (cl:make-instance 'dg_msgs-msg:EquipmentCommon))
   (number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (sn_number
    :reader sn_number
    :initarg :sn_number
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (intrinsics
    :reader intrinsics
    :initarg :intrinsics
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass CameraInfo (<CameraInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<CameraInfo> is deprecated: use dg_msgs-msg:CameraInfo instead.")))

(cl:ensure-generic-function 'equipment-val :lambda-list '(m))
(cl:defmethod equipment-val ((m <CameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:equipment-val is deprecated.  Use dg_msgs-msg:equipment instead.")
  (equipment m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <CameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'sn_number-val :lambda-list '(m))
(cl:defmethod sn_number-val ((m <CameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:sn_number-val is deprecated.  Use dg_msgs-msg:sn_number instead.")
  (sn_number m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:type-val is deprecated.  Use dg_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'intrinsics-val :lambda-list '(m))
(cl:defmethod intrinsics-val ((m <CameraInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:intrinsics-val is deprecated.  Use dg_msgs-msg:intrinsics instead.")
  (intrinsics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraInfo>) ostream)
  "Serializes a message object of type '<CameraInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'equipment) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sn_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sn_number))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intrinsics))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'intrinsics))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraInfo>) istream)
  "Deserializes a message object of type '<CameraInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'equipment) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sn_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sn_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intrinsics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intrinsics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraInfo>)))
  "Returns string type for a message object of type '<CameraInfo>"
  "dg_msgs/CameraInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraInfo)))
  "Returns string type for a message object of type 'CameraInfo"
  "dg_msgs/CameraInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraInfo>)))
  "Returns md5sum for a message object of type '<CameraInfo>"
  "0e1b22249cf44b930907f3d67d01392c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraInfo)))
  "Returns md5sum for a message object of type 'CameraInfo"
  "0e1b22249cf44b930907f3d67d01392c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraInfo>)))
  "Returns full string definition for message of type '<CameraInfo>"
  (cl:format cl:nil "EquipmentCommon equipment~%string number           # 设备组编号~%string sn_number~%int32 type~%float32[] intrinsics~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraInfo)))
  "Returns full string definition for message of type 'CameraInfo"
  (cl:format cl:nil "EquipmentCommon equipment~%string number           # 设备组编号~%string sn_number~%int32 type~%float32[] intrinsics~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'equipment))
     4 (cl:length (cl:slot-value msg 'number))
     4 (cl:length (cl:slot-value msg 'sn_number))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intrinsics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraInfo
    (cl:cons ':equipment (equipment msg))
    (cl:cons ':number (number msg))
    (cl:cons ':sn_number (sn_number msg))
    (cl:cons ':type (type msg))
    (cl:cons ':intrinsics (intrinsics msg))
))
