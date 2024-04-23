; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude ROSTopicState.msg.html

(cl:defclass <ROSTopicState> (roslisp-msg-protocol:ros-message)
  ((topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (publish_node
    :reader publish_node
    :initarg :publish_node
    :type cl:string
    :initform "")
   (publish_rate
    :reader publish_rate
    :initarg :publish_rate
    :type cl:float
    :initform 0.0)
   (desire_rate
    :reader desire_rate
    :initarg :desire_rate
    :type cl:float
    :initform 0.0)
   (bandwidth
    :reader bandwidth
    :initarg :bandwidth
    :type cl:float
    :initform 0.0)
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:MonitorState
    :initform (cl:make-instance 'dg_msgs-msg:MonitorState)))
)

(cl:defclass ROSTopicState (<ROSTopicState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROSTopicState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROSTopicState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<ROSTopicState> is deprecated: use dg_msgs-msg:ROSTopicState instead.")))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <ROSTopicState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:topic_name-val is deprecated.  Use dg_msgs-msg:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'publish_node-val :lambda-list '(m))
(cl:defmethod publish_node-val ((m <ROSTopicState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:publish_node-val is deprecated.  Use dg_msgs-msg:publish_node instead.")
  (publish_node m))

(cl:ensure-generic-function 'publish_rate-val :lambda-list '(m))
(cl:defmethod publish_rate-val ((m <ROSTopicState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:publish_rate-val is deprecated.  Use dg_msgs-msg:publish_rate instead.")
  (publish_rate m))

(cl:ensure-generic-function 'desire_rate-val :lambda-list '(m))
(cl:defmethod desire_rate-val ((m <ROSTopicState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:desire_rate-val is deprecated.  Use dg_msgs-msg:desire_rate instead.")
  (desire_rate m))

(cl:ensure-generic-function 'bandwidth-val :lambda-list '(m))
(cl:defmethod bandwidth-val ((m <ROSTopicState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:bandwidth-val is deprecated.  Use dg_msgs-msg:bandwidth instead.")
  (bandwidth m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <ROSTopicState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_info-val is deprecated.  Use dg_msgs-msg:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROSTopicState>) ostream)
  "Serializes a message object of type '<ROSTopicState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'publish_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'publish_node))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'publish_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desire_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bandwidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROSTopicState>) istream)
  "Deserializes a message object of type '<ROSTopicState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'publish_node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'publish_node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'publish_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desire_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bandwidth) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROSTopicState>)))
  "Returns string type for a message object of type '<ROSTopicState>"
  "dg_msgs/ROSTopicState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROSTopicState)))
  "Returns string type for a message object of type 'ROSTopicState"
  "dg_msgs/ROSTopicState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROSTopicState>)))
  "Returns md5sum for a message object of type '<ROSTopicState>"
  "311695093c106b87476e31b7c6eb9105")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROSTopicState)))
  "Returns md5sum for a message object of type 'ROSTopicState"
  "311695093c106b87476e31b7c6eb9105")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROSTopicState>)))
  "Returns full string definition for message of type '<ROSTopicState>"
  (cl:format cl:nil "# ros-topic 状态~%string topic_name               # 话题名~%string publish_node             # 发布节点  ~%float32 publish_rate            # 当前发布频率~%float32 desire_rate             # 期望频率~%float32 bandwidth               # 当前占用网络带宽~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROSTopicState)))
  "Returns full string definition for message of type 'ROSTopicState"
  (cl:format cl:nil "# ros-topic 状态~%string topic_name               # 话题名~%string publish_node             # 发布节点  ~%float32 publish_rate            # 当前发布频率~%float32 desire_rate             # 期望频率~%float32 bandwidth               # 当前占用网络带宽~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROSTopicState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_name))
     4 (cl:length (cl:slot-value msg 'publish_node))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROSTopicState>))
  "Converts a ROS message object to a list"
  (cl:list 'ROSTopicState
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':publish_node (publish_node msg))
    (cl:cons ':publish_rate (publish_rate msg))
    (cl:cons ':desire_rate (desire_rate msg))
    (cl:cons ':bandwidth (bandwidth msg))
    (cl:cons ':state_info (state_info msg))
))
