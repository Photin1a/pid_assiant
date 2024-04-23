; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude SlideTableInfo.msg.html

(cl:defclass <SlideTableInfo> (roslisp-msg-protocol:ros-message)
  ((equipment
    :reader equipment
    :initarg :equipment
    :type dg_msgs-msg:EquipmentCommon
    :initform (cl:make-instance 'dg_msgs-msg:EquipmentCommon))
   (number
    :reader number
    :initarg :number
    :type cl:string
    :initform ""))
)

(cl:defclass SlideTableInfo (<SlideTableInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SlideTableInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SlideTableInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<SlideTableInfo> is deprecated: use dg_msgs-msg:SlideTableInfo instead.")))

(cl:ensure-generic-function 'equipment-val :lambda-list '(m))
(cl:defmethod equipment-val ((m <SlideTableInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:equipment-val is deprecated.  Use dg_msgs-msg:equipment instead.")
  (equipment m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <SlideTableInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SlideTableInfo>) ostream)
  "Serializes a message object of type '<SlideTableInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'equipment) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SlideTableInfo>) istream)
  "Deserializes a message object of type '<SlideTableInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'equipment) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SlideTableInfo>)))
  "Returns string type for a message object of type '<SlideTableInfo>"
  "dg_msgs/SlideTableInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SlideTableInfo)))
  "Returns string type for a message object of type 'SlideTableInfo"
  "dg_msgs/SlideTableInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SlideTableInfo>)))
  "Returns md5sum for a message object of type '<SlideTableInfo>"
  "a92e2b46f01bfa741cf5246e7733e6ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SlideTableInfo)))
  "Returns md5sum for a message object of type 'SlideTableInfo"
  "a92e2b46f01bfa741cf5246e7733e6ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SlideTableInfo>)))
  "Returns full string definition for message of type '<SlideTableInfo>"
  (cl:format cl:nil "EquipmentCommon equipment~%string number           # 设备组编号~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SlideTableInfo)))
  "Returns full string definition for message of type 'SlideTableInfo"
  (cl:format cl:nil "EquipmentCommon equipment~%string number           # 设备组编号~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SlideTableInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'equipment))
     4 (cl:length (cl:slot-value msg 'number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SlideTableInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SlideTableInfo
    (cl:cons ':equipment (equipment msg))
    (cl:cons ':number (number msg))
))
