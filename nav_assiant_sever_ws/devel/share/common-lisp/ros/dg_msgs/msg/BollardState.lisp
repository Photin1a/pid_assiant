; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude BollardState.msg.html

(cl:defclass <BollardState> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (bollard_name
    :reader bollard_name
    :initarg :bollard_name
    :type cl:string
    :initform "")
   (absolute_height
    :reader absolute_height
    :initarg :absolute_height
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (is_aviable
    :reader is_aviable
    :initarg :is_aviable
    :type cl:boolean
    :initform cl:nil)
   (is_moving
    :reader is_moving
    :initarg :is_moving
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BollardState (<BollardState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BollardState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BollardState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<BollardState> is deprecated: use dg_msgs-msg:BollardState instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <BollardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'bollard_name-val :lambda-list '(m))
(cl:defmethod bollard_name-val ((m <BollardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:bollard_name-val is deprecated.  Use dg_msgs-msg:bollard_name instead.")
  (bollard_name m))

(cl:ensure-generic-function 'absolute_height-val :lambda-list '(m))
(cl:defmethod absolute_height-val ((m <BollardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:absolute_height-val is deprecated.  Use dg_msgs-msg:absolute_height instead.")
  (absolute_height m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <BollardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:speed-val is deprecated.  Use dg_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'is_aviable-val :lambda-list '(m))
(cl:defmethod is_aviable-val ((m <BollardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_aviable-val is deprecated.  Use dg_msgs-msg:is_aviable instead.")
  (is_aviable m))

(cl:ensure-generic-function 'is_moving-val :lambda-list '(m))
(cl:defmethod is_moving-val ((m <BollardState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_moving-val is deprecated.  Use dg_msgs-msg:is_moving instead.")
  (is_moving m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BollardState>) ostream)
  "Serializes a message object of type '<BollardState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bollard_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bollard_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'absolute_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_aviable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_moving) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BollardState>) istream)
  "Deserializes a message object of type '<BollardState>"
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
      (cl:setf (cl:slot-value msg 'bollard_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bollard_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'absolute_height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_aviable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_moving) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BollardState>)))
  "Returns string type for a message object of type '<BollardState>"
  "dg_msgs/BollardState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardState)))
  "Returns string type for a message object of type 'BollardState"
  "dg_msgs/BollardState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BollardState>)))
  "Returns md5sum for a message object of type '<BollardState>"
  "97182af4acca076bb0c4ed889ad3c8a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BollardState)))
  "Returns md5sum for a message object of type 'BollardState"
  "97182af4acca076bb0c4ed889ad3c8a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BollardState>)))
  "Returns full string definition for message of type '<BollardState>"
  (cl:format cl:nil "# 升降柱状态信息~%string number               # 设备组编号~%string bollard_name         # 升降柱名~%float32 absolute_height     # 升降柱绝对高度~%float32 speed               # 升降柱速度~%bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立~%bool is_moving              # 当前是否正在运动~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BollardState)))
  "Returns full string definition for message of type 'BollardState"
  (cl:format cl:nil "# 升降柱状态信息~%string number               # 设备组编号~%string bollard_name         # 升降柱名~%float32 absolute_height     # 升降柱绝对高度~%float32 speed               # 升降柱速度~%bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立~%bool is_moving              # 当前是否正在运动~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BollardState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4 (cl:length (cl:slot-value msg 'bollard_name))
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BollardState>))
  "Converts a ROS message object to a list"
  (cl:list 'BollardState
    (cl:cons ':number (number msg))
    (cl:cons ':bollard_name (bollard_name msg))
    (cl:cons ':absolute_height (absolute_height msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':is_aviable (is_aviable msg))
    (cl:cons ':is_moving (is_moving msg))
))
