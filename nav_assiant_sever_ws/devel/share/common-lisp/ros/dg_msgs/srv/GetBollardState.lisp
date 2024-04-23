; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude GetBollardState-request.msg.html

(cl:defclass <GetBollardState-request> (roslisp-msg-protocol:ros-message)
  ((bollard_index
    :reader bollard_index
    :initarg :bollard_index
    :type cl:integer
    :initform 0))
)

(cl:defclass GetBollardState-request (<GetBollardState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBollardState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBollardState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetBollardState-request> is deprecated: use dg_msgs-srv:GetBollardState-request instead.")))

(cl:ensure-generic-function 'bollard_index-val :lambda-list '(m))
(cl:defmethod bollard_index-val ((m <GetBollardState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:bollard_index-val is deprecated.  Use dg_msgs-srv:bollard_index instead.")
  (bollard_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBollardState-request>) ostream)
  "Serializes a message object of type '<GetBollardState-request>"
  (cl:let* ((signed (cl:slot-value msg 'bollard_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBollardState-request>) istream)
  "Deserializes a message object of type '<GetBollardState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bollard_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBollardState-request>)))
  "Returns string type for a service object of type '<GetBollardState-request>"
  "dg_msgs/GetBollardStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBollardState-request)))
  "Returns string type for a service object of type 'GetBollardState-request"
  "dg_msgs/GetBollardStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBollardState-request>)))
  "Returns md5sum for a message object of type '<GetBollardState-request>"
  "b8d36c8ac70f1a2e4bd8359afad61cf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBollardState-request)))
  "Returns md5sum for a message object of type 'GetBollardState-request"
  "b8d36c8ac70f1a2e4bd8359afad61cf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBollardState-request>)))
  "Returns full string definition for message of type '<GetBollardState-request>"
  (cl:format cl:nil "# 获得升降柱状态~%int32 bollard_index         # 升降柱编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBollardState-request)))
  "Returns full string definition for message of type 'GetBollardState-request"
  (cl:format cl:nil "# 获得升降柱状态~%int32 bollard_index         # 升降柱编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBollardState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBollardState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBollardState-request
    (cl:cons ':bollard_index (bollard_index msg))
))
;//! \htmlinclude GetBollardState-response.msg.html

(cl:defclass <GetBollardState-response> (roslisp-msg-protocol:ros-message)
  ((bollard_state
    :reader bollard_state
    :initarg :bollard_state
    :type dg_msgs-msg:BollardState
    :initform (cl:make-instance 'dg_msgs-msg:BollardState)))
)

(cl:defclass GetBollardState-response (<GetBollardState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBollardState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBollardState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetBollardState-response> is deprecated: use dg_msgs-srv:GetBollardState-response instead.")))

(cl:ensure-generic-function 'bollard_state-val :lambda-list '(m))
(cl:defmethod bollard_state-val ((m <GetBollardState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:bollard_state-val is deprecated.  Use dg_msgs-srv:bollard_state instead.")
  (bollard_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBollardState-response>) ostream)
  "Serializes a message object of type '<GetBollardState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bollard_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBollardState-response>) istream)
  "Deserializes a message object of type '<GetBollardState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bollard_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBollardState-response>)))
  "Returns string type for a service object of type '<GetBollardState-response>"
  "dg_msgs/GetBollardStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBollardState-response)))
  "Returns string type for a service object of type 'GetBollardState-response"
  "dg_msgs/GetBollardStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBollardState-response>)))
  "Returns md5sum for a message object of type '<GetBollardState-response>"
  "b8d36c8ac70f1a2e4bd8359afad61cf1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBollardState-response)))
  "Returns md5sum for a message object of type 'GetBollardState-response"
  "b8d36c8ac70f1a2e4bd8359afad61cf1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBollardState-response>)))
  "Returns full string definition for message of type '<GetBollardState-response>"
  (cl:format cl:nil "BollardState bollard_state  # 升降柱状态~%~%================================================================================~%MSG: dg_msgs/BollardState~%# 升降柱状态信息~%string number               # 设备组编号~%string bollard_name         # 升降柱名~%float32 absolute_height     # 升降柱绝对高度~%float32 speed               # 升降柱速度~%bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立~%bool is_moving              # 当前是否正在运动~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBollardState-response)))
  "Returns full string definition for message of type 'GetBollardState-response"
  (cl:format cl:nil "BollardState bollard_state  # 升降柱状态~%~%================================================================================~%MSG: dg_msgs/BollardState~%# 升降柱状态信息~%string number               # 设备组编号~%string bollard_name         # 升降柱名~%float32 absolute_height     # 升降柱绝对高度~%float32 speed               # 升降柱速度~%bool is_aviable             # 当前是否可用；急停被按下、当前处于自动、modbus指针没有成功建立~%bool is_moving              # 当前是否正在运动~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBollardState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bollard_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBollardState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBollardState-response
    (cl:cons ':bollard_state (bollard_state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBollardState)))
  'GetBollardState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBollardState)))
  'GetBollardState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBollardState)))
  "Returns string type for a service object of type '<GetBollardState>"
  "dg_msgs/GetBollardState")