; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude GetSetAntiCollisionWheel-request.msg.html

(cl:defclass <GetSetAntiCollisionWheel-request> (roslisp-msg-protocol:ros-message)
  ((target_state
    :reader target_state
    :initarg :target_state
    :type (cl:vector dg_msgs-msg:AntiCollisionWheelState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:AntiCollisionWheelState :initial-element (cl:make-instance 'dg_msgs-msg:AntiCollisionWheelState))))
)

(cl:defclass GetSetAntiCollisionWheel-request (<GetSetAntiCollisionWheel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSetAntiCollisionWheel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSetAntiCollisionWheel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetSetAntiCollisionWheel-request> is deprecated: use dg_msgs-srv:GetSetAntiCollisionWheel-request instead.")))

(cl:ensure-generic-function 'target_state-val :lambda-list '(m))
(cl:defmethod target_state-val ((m <GetSetAntiCollisionWheel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:target_state-val is deprecated.  Use dg_msgs-srv:target_state instead.")
  (target_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSetAntiCollisionWheel-request>) ostream)
  "Serializes a message object of type '<GetSetAntiCollisionWheel-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'target_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSetAntiCollisionWheel-request>) istream)
  "Deserializes a message object of type '<GetSetAntiCollisionWheel-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:AntiCollisionWheelState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSetAntiCollisionWheel-request>)))
  "Returns string type for a service object of type '<GetSetAntiCollisionWheel-request>"
  "dg_msgs/GetSetAntiCollisionWheelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetAntiCollisionWheel-request)))
  "Returns string type for a service object of type 'GetSetAntiCollisionWheel-request"
  "dg_msgs/GetSetAntiCollisionWheelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSetAntiCollisionWheel-request>)))
  "Returns md5sum for a message object of type '<GetSetAntiCollisionWheel-request>"
  "e205aef48784b5a49ae3295ca6ee4c49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSetAntiCollisionWheel-request)))
  "Returns md5sum for a message object of type 'GetSetAntiCollisionWheel-request"
  "e205aef48784b5a49ae3295ca6ee4c49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSetAntiCollisionWheel-request>)))
  "Returns full string definition for message of type '<GetSetAntiCollisionWheel-request>"
  (cl:format cl:nil "# 获取/设置防撞轮状态 - 允许同时设置/获取多个防撞轮状态~%AntiCollisionWheelState[] target_state~%~%================================================================================~%MSG: dg_msgs/AntiCollisionWheelState~%# 防撞轮状态 - 设置和获取通用~%string wheel_name           # 防撞轮名~%bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态~%float32 position            # 位置~%float32 speed               # 速度~%int32 state_word            # 状态字~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSetAntiCollisionWheel-request)))
  "Returns full string definition for message of type 'GetSetAntiCollisionWheel-request"
  (cl:format cl:nil "# 获取/设置防撞轮状态 - 允许同时设置/获取多个防撞轮状态~%AntiCollisionWheelState[] target_state~%~%================================================================================~%MSG: dg_msgs/AntiCollisionWheelState~%# 防撞轮状态 - 设置和获取通用~%string wheel_name           # 防撞轮名~%bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态~%float32 position            # 位置~%float32 speed               # 速度~%int32 state_word            # 状态字~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSetAntiCollisionWheel-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSetAntiCollisionWheel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSetAntiCollisionWheel-request
    (cl:cons ':target_state (target_state msg))
))
;//! \htmlinclude GetSetAntiCollisionWheel-response.msg.html

(cl:defclass <GetSetAntiCollisionWheel-response> (roslisp-msg-protocol:ros-message)
  ((current_state
    :reader current_state
    :initarg :current_state
    :type (cl:vector dg_msgs-msg:AntiCollisionWheelState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:AntiCollisionWheelState :initial-element (cl:make-instance 'dg_msgs-msg:AntiCollisionWheelState))))
)

(cl:defclass GetSetAntiCollisionWheel-response (<GetSetAntiCollisionWheel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSetAntiCollisionWheel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSetAntiCollisionWheel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetSetAntiCollisionWheel-response> is deprecated: use dg_msgs-srv:GetSetAntiCollisionWheel-response instead.")))

(cl:ensure-generic-function 'current_state-val :lambda-list '(m))
(cl:defmethod current_state-val ((m <GetSetAntiCollisionWheel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:current_state-val is deprecated.  Use dg_msgs-srv:current_state instead.")
  (current_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSetAntiCollisionWheel-response>) ostream)
  "Serializes a message object of type '<GetSetAntiCollisionWheel-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'current_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'current_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSetAntiCollisionWheel-response>) istream)
  "Deserializes a message object of type '<GetSetAntiCollisionWheel-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'current_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'current_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:AntiCollisionWheelState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSetAntiCollisionWheel-response>)))
  "Returns string type for a service object of type '<GetSetAntiCollisionWheel-response>"
  "dg_msgs/GetSetAntiCollisionWheelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetAntiCollisionWheel-response)))
  "Returns string type for a service object of type 'GetSetAntiCollisionWheel-response"
  "dg_msgs/GetSetAntiCollisionWheelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSetAntiCollisionWheel-response>)))
  "Returns md5sum for a message object of type '<GetSetAntiCollisionWheel-response>"
  "e205aef48784b5a49ae3295ca6ee4c49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSetAntiCollisionWheel-response)))
  "Returns md5sum for a message object of type 'GetSetAntiCollisionWheel-response"
  "e205aef48784b5a49ae3295ca6ee4c49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSetAntiCollisionWheel-response>)))
  "Returns full string definition for message of type '<GetSetAntiCollisionWheel-response>"
  (cl:format cl:nil "AntiCollisionWheelState[] current_state~%~%================================================================================~%MSG: dg_msgs/AntiCollisionWheelState~%# 防撞轮状态 - 设置和获取通用~%string wheel_name           # 防撞轮名~%bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态~%float32 position            # 位置~%float32 speed               # 速度~%int32 state_word            # 状态字~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSetAntiCollisionWheel-response)))
  "Returns full string definition for message of type 'GetSetAntiCollisionWheel-response"
  (cl:format cl:nil "AntiCollisionWheelState[] current_state~%~%================================================================================~%MSG: dg_msgs/AntiCollisionWheelState~%# 防撞轮状态 - 设置和获取通用~%string wheel_name           # 防撞轮名~%bool is_get_state           # 当前请求是否是获得状态，如果为true为请求状态，false则为设置状态~%float32 position            # 位置~%float32 speed               # 速度~%int32 state_word            # 状态字~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSetAntiCollisionWheel-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'current_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSetAntiCollisionWheel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSetAntiCollisionWheel-response
    (cl:cons ':current_state (current_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSetAntiCollisionWheel)))
  'GetSetAntiCollisionWheel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSetAntiCollisionWheel)))
  'GetSetAntiCollisionWheel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSetAntiCollisionWheel)))
  "Returns string type for a service object of type '<GetSetAntiCollisionWheel>"
  "dg_msgs/GetSetAntiCollisionWheel")