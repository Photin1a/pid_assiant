; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude BollardPauseRecvTerm-request.msg.html

(cl:defclass <BollardPauseRecvTerm-request> (roslisp-msg-protocol:ros-message)
  ((operation_
    :reader operation_
    :initarg :operation_
    :type cl:string
    :initform ""))
)

(cl:defclass BollardPauseRecvTerm-request (<BollardPauseRecvTerm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BollardPauseRecvTerm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BollardPauseRecvTerm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<BollardPauseRecvTerm-request> is deprecated: use dg_msgs-srv:BollardPauseRecvTerm-request instead.")))

(cl:ensure-generic-function 'operation_-val :lambda-list '(m))
(cl:defmethod operation_-val ((m <BollardPauseRecvTerm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:operation_-val is deprecated.  Use dg_msgs-srv:operation_ instead.")
  (operation_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BollardPauseRecvTerm-request>) ostream)
  "Serializes a message object of type '<BollardPauseRecvTerm-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation_))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation_))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BollardPauseRecvTerm-request>) istream)
  "Deserializes a message object of type '<BollardPauseRecvTerm-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation_) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BollardPauseRecvTerm-request>)))
  "Returns string type for a service object of type '<BollardPauseRecvTerm-request>"
  "dg_msgs/BollardPauseRecvTermRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardPauseRecvTerm-request)))
  "Returns string type for a service object of type 'BollardPauseRecvTerm-request"
  "dg_msgs/BollardPauseRecvTermRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BollardPauseRecvTerm-request>)))
  "Returns md5sum for a message object of type '<BollardPauseRecvTerm-request>"
  "79a8946e4b3e453cc2c4ad94be08ff4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BollardPauseRecvTerm-request)))
  "Returns md5sum for a message object of type 'BollardPauseRecvTerm-request"
  "79a8946e4b3e453cc2c4ad94be08ff4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BollardPauseRecvTerm-request>)))
  "Returns full string definition for message of type '<BollardPauseRecvTerm-request>"
  (cl:format cl:nil "# 升降柱暂停/恢复/终止服务~%# 一旦调用了这个服务中的暂停，必须给一个对应的恢复才能将控制权给自动模式下~%# 但调用了暂停后仍然可以使用手动控制，因为人工权限大于自动权限~%string operation_           # pause暂停，recovery恢复，terminate终止，必须是三选一，否则直接拒绝~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BollardPauseRecvTerm-request)))
  "Returns full string definition for message of type 'BollardPauseRecvTerm-request"
  (cl:format cl:nil "# 升降柱暂停/恢复/终止服务~%# 一旦调用了这个服务中的暂停，必须给一个对应的恢复才能将控制权给自动模式下~%# 但调用了暂停后仍然可以使用手动控制，因为人工权限大于自动权限~%string operation_           # pause暂停，recovery恢复，terminate终止，必须是三选一，否则直接拒绝~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BollardPauseRecvTerm-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'operation_))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BollardPauseRecvTerm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BollardPauseRecvTerm-request
    (cl:cons ':operation_ (operation_ msg))
))
;//! \htmlinclude BollardPauseRecvTerm-response.msg.html

(cl:defclass <BollardPauseRecvTerm-response> (roslisp-msg-protocol:ros-message)
  ((current_height
    :reader current_height
    :initarg :current_height
    :type cl:float
    :initform 0.0))
)

(cl:defclass BollardPauseRecvTerm-response (<BollardPauseRecvTerm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BollardPauseRecvTerm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BollardPauseRecvTerm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<BollardPauseRecvTerm-response> is deprecated: use dg_msgs-srv:BollardPauseRecvTerm-response instead.")))

(cl:ensure-generic-function 'current_height-val :lambda-list '(m))
(cl:defmethod current_height-val ((m <BollardPauseRecvTerm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:current_height-val is deprecated.  Use dg_msgs-srv:current_height instead.")
  (current_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BollardPauseRecvTerm-response>) ostream)
  "Serializes a message object of type '<BollardPauseRecvTerm-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BollardPauseRecvTerm-response>) istream)
  "Deserializes a message object of type '<BollardPauseRecvTerm-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BollardPauseRecvTerm-response>)))
  "Returns string type for a service object of type '<BollardPauseRecvTerm-response>"
  "dg_msgs/BollardPauseRecvTermResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardPauseRecvTerm-response)))
  "Returns string type for a service object of type 'BollardPauseRecvTerm-response"
  "dg_msgs/BollardPauseRecvTermResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BollardPauseRecvTerm-response>)))
  "Returns md5sum for a message object of type '<BollardPauseRecvTerm-response>"
  "79a8946e4b3e453cc2c4ad94be08ff4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BollardPauseRecvTerm-response)))
  "Returns md5sum for a message object of type 'BollardPauseRecvTerm-response"
  "79a8946e4b3e453cc2c4ad94be08ff4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BollardPauseRecvTerm-response>)))
  "Returns full string definition for message of type '<BollardPauseRecvTerm-response>"
  (cl:format cl:nil "float32 current_height      # 当前高度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BollardPauseRecvTerm-response)))
  "Returns full string definition for message of type 'BollardPauseRecvTerm-response"
  (cl:format cl:nil "float32 current_height      # 当前高度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BollardPauseRecvTerm-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BollardPauseRecvTerm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BollardPauseRecvTerm-response
    (cl:cons ':current_height (current_height msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BollardPauseRecvTerm)))
  'BollardPauseRecvTerm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BollardPauseRecvTerm)))
  'BollardPauseRecvTerm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardPauseRecvTerm)))
  "Returns string type for a service object of type '<BollardPauseRecvTerm>"
  "dg_msgs/BollardPauseRecvTerm")