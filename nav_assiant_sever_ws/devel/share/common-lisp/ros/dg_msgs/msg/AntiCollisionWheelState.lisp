; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude AntiCollisionWheelState.msg.html

(cl:defclass <AntiCollisionWheelState> (roslisp-msg-protocol:ros-message)
  ((wheel_name
    :reader wheel_name
    :initarg :wheel_name
    :type cl:string
    :initform "")
   (is_get_state
    :reader is_get_state
    :initarg :is_get_state
    :type cl:boolean
    :initform cl:nil)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (state_word
    :reader state_word
    :initarg :state_word
    :type cl:integer
    :initform 0))
)

(cl:defclass AntiCollisionWheelState (<AntiCollisionWheelState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AntiCollisionWheelState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AntiCollisionWheelState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<AntiCollisionWheelState> is deprecated: use dg_msgs-msg:AntiCollisionWheelState instead.")))

(cl:ensure-generic-function 'wheel_name-val :lambda-list '(m))
(cl:defmethod wheel_name-val ((m <AntiCollisionWheelState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:wheel_name-val is deprecated.  Use dg_msgs-msg:wheel_name instead.")
  (wheel_name m))

(cl:ensure-generic-function 'is_get_state-val :lambda-list '(m))
(cl:defmethod is_get_state-val ((m <AntiCollisionWheelState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_get_state-val is deprecated.  Use dg_msgs-msg:is_get_state instead.")
  (is_get_state m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <AntiCollisionWheelState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:position-val is deprecated.  Use dg_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <AntiCollisionWheelState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:speed-val is deprecated.  Use dg_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'state_word-val :lambda-list '(m))
(cl:defmethod state_word-val ((m <AntiCollisionWheelState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_word-val is deprecated.  Use dg_msgs-msg:state_word instead.")
  (state_word m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AntiCollisionWheelState>) ostream)
  "Serializes a message object of type '<AntiCollisionWheelState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wheel_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wheel_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_get_state) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'state_word)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AntiCollisionWheelState>) istream)
  "Deserializes a message object of type '<AntiCollisionWheelState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wheel_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_get_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_word) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AntiCollisionWheelState>)))
  "Returns string type for a message object of type '<AntiCollisionWheelState>"
  "dg_msgs/AntiCollisionWheelState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AntiCollisionWheelState)))
  "Returns string type for a message object of type 'AntiCollisionWheelState"
  "dg_msgs/AntiCollisionWheelState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AntiCollisionWheelState>)))
  "Returns md5sum for a message object of type '<AntiCollisionWheelState>"
  "a269fe39cc5307abc0b5ce3d3619c54a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AntiCollisionWheelState)))
  "Returns md5sum for a message object of type 'AntiCollisionWheelState"
  "a269fe39cc5307abc0b5ce3d3619c54a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AntiCollisionWheelState>)))
  "Returns full string definition for message of type '<AntiCollisionWheelState>"
  (cl:format cl:nil "# 防撞轮状态 - 设置和获取通用~%string wheel_name           # 防撞轮名~%bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态~%float32 position            # 位置~%float32 speed               # 速度~%int32 state_word            # 状态字~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AntiCollisionWheelState)))
  "Returns full string definition for message of type 'AntiCollisionWheelState"
  (cl:format cl:nil "# 防撞轮状态 - 设置和获取通用~%string wheel_name           # 防撞轮名~%bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态~%float32 position            # 位置~%float32 speed               # 速度~%int32 state_word            # 状态字~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AntiCollisionWheelState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wheel_name))
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AntiCollisionWheelState>))
  "Converts a ROS message object to a list"
  (cl:list 'AntiCollisionWheelState
    (cl:cons ':wheel_name (wheel_name msg))
    (cl:cons ':is_get_state (is_get_state msg))
    (cl:cons ':position (position msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':state_word (state_word msg))
))
