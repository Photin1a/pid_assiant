; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude ImageGoal.msg.html

(cl:defclass <ImageGoal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (types
    :reader types
    :initarg :types
    :type cl:integer
    :initform 0))
)

(cl:defclass ImageGoal (<ImageGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<ImageGoal> is deprecated: use dg_msgs-msg:ImageGoal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ImageGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:id-val is deprecated.  Use dg_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <ImageGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'types-val :lambda-list '(m))
(cl:defmethod types-val ((m <ImageGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:types-val is deprecated.  Use dg_msgs-msg:types instead.")
  (types m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageGoal>) ostream)
  "Serializes a message object of type '<ImageGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let* ((signed (cl:slot-value msg 'types)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageGoal>) istream)
  "Deserializes a message object of type '<ImageGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'types) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageGoal>)))
  "Returns string type for a message object of type '<ImageGoal>"
  "dg_msgs/ImageGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageGoal)))
  "Returns string type for a message object of type 'ImageGoal"
  "dg_msgs/ImageGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageGoal>)))
  "Returns md5sum for a message object of type '<ImageGoal>"
  "fbfef27b7beeeca86de68f1f450bf200")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageGoal)))
  "Returns md5sum for a message object of type 'ImageGoal"
  "fbfef27b7beeeca86de68f1f450bf200")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageGoal>)))
  "Returns full string definition for message of type '<ImageGoal>"
  (cl:format cl:nil "string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageGoal)))
  "Returns full string definition for message of type 'ImageGoal"
  (cl:format cl:nil "string id          # ID~%string number     # 设备编号~%int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'number))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageGoal
    (cl:cons ':id (id msg))
    (cl:cons ':number (number msg))
    (cl:cons ':types (types msg))
))
