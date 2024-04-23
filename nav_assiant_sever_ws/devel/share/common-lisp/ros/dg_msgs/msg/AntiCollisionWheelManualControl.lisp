; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude AntiCollisionWheelManualControl.msg.html

(cl:defclass <AntiCollisionWheelManualControl> (roslisp-msg-protocol:ros-message)
  ((wheel_name
    :reader wheel_name
    :initarg :wheel_name
    :type cl:string
    :initform "")
   (operation
    :reader operation
    :initarg :operation
    :type cl:string
    :initform ""))
)

(cl:defclass AntiCollisionWheelManualControl (<AntiCollisionWheelManualControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AntiCollisionWheelManualControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AntiCollisionWheelManualControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<AntiCollisionWheelManualControl> is deprecated: use dg_msgs-msg:AntiCollisionWheelManualControl instead.")))

(cl:ensure-generic-function 'wheel_name-val :lambda-list '(m))
(cl:defmethod wheel_name-val ((m <AntiCollisionWheelManualControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:wheel_name-val is deprecated.  Use dg_msgs-msg:wheel_name instead.")
  (wheel_name m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <AntiCollisionWheelManualControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:operation-val is deprecated.  Use dg_msgs-msg:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AntiCollisionWheelManualControl>) ostream)
  "Serializes a message object of type '<AntiCollisionWheelManualControl>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wheel_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wheel_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AntiCollisionWheelManualControl>) istream)
  "Deserializes a message object of type '<AntiCollisionWheelManualControl>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wheel_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AntiCollisionWheelManualControl>)))
  "Returns string type for a message object of type '<AntiCollisionWheelManualControl>"
  "dg_msgs/AntiCollisionWheelManualControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AntiCollisionWheelManualControl)))
  "Returns string type for a message object of type 'AntiCollisionWheelManualControl"
  "dg_msgs/AntiCollisionWheelManualControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AntiCollisionWheelManualControl>)))
  "Returns md5sum for a message object of type '<AntiCollisionWheelManualControl>"
  "ebd1a681399214fc953fcd354c838a59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AntiCollisionWheelManualControl)))
  "Returns md5sum for a message object of type 'AntiCollisionWheelManualControl"
  "ebd1a681399214fc953fcd354c838a59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AntiCollisionWheelManualControl>)))
  "Returns full string definition for message of type '<AntiCollisionWheelManualControl>"
  (cl:format cl:nil "# 防撞轮手动控制~%string wheel_name       # 防撞轮名~%string operation        # 操作：extend 伸出；insert 深入；roll 滚动；zero 回零~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AntiCollisionWheelManualControl)))
  "Returns full string definition for message of type 'AntiCollisionWheelManualControl"
  (cl:format cl:nil "# 防撞轮手动控制~%string wheel_name       # 防撞轮名~%string operation        # 操作：extend 伸出；insert 深入；roll 滚动；zero 回零~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AntiCollisionWheelManualControl>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wheel_name))
     4 (cl:length (cl:slot-value msg 'operation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AntiCollisionWheelManualControl>))
  "Converts a ROS message object to a list"
  (cl:list 'AntiCollisionWheelManualControl
    (cl:cons ':wheel_name (wheel_name msg))
    (cl:cons ':operation (operation msg))
))
