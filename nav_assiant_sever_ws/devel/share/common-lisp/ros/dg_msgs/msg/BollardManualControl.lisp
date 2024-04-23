; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude BollardManualControl.msg.html

(cl:defclass <BollardManualControl> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (operation
    :reader operation
    :initarg :operation
    :type cl:string
    :initform ""))
)

(cl:defclass BollardManualControl (<BollardManualControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BollardManualControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BollardManualControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<BollardManualControl> is deprecated: use dg_msgs-msg:BollardManualControl instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <BollardManualControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:number-val is deprecated.  Use dg_msgs-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <BollardManualControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:operation-val is deprecated.  Use dg_msgs-msg:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BollardManualControl>) ostream)
  "Serializes a message object of type '<BollardManualControl>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BollardManualControl>) istream)
  "Deserializes a message object of type '<BollardManualControl>"
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
      (cl:setf (cl:slot-value msg 'operation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BollardManualControl>)))
  "Returns string type for a message object of type '<BollardManualControl>"
  "dg_msgs/BollardManualControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardManualControl)))
  "Returns string type for a message object of type 'BollardManualControl"
  "dg_msgs/BollardManualControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BollardManualControl>)))
  "Returns md5sum for a message object of type '<BollardManualControl>"
  "ebc26c1ef4bd71b1e5ffe698e4b6a4f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BollardManualControl)))
  "Returns md5sum for a message object of type 'BollardManualControl"
  "ebc26c1ef4bd71b1e5ffe698e4b6a4f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BollardManualControl>)))
  "Returns full string definition for message of type '<BollardManualControl>"
  (cl:format cl:nil "# 手动控制升降柱的消息~%string number           # 设备组编号~%string operation        # 停止stop, 上升rise, 下降desc, 如果不填写就是停止~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BollardManualControl)))
  "Returns full string definition for message of type 'BollardManualControl"
  (cl:format cl:nil "# 手动控制升降柱的消息~%string number           # 设备组编号~%string operation        # 停止stop, 上升rise, 下降desc, 如果不填写就是停止~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BollardManualControl>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4 (cl:length (cl:slot-value msg 'operation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BollardManualControl>))
  "Converts a ROS message object to a list"
  (cl:list 'BollardManualControl
    (cl:cons ':number (number msg))
    (cl:cons ':operation (operation msg))
))
