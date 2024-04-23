; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude XGGoToElevator-request.msg.html

(cl:defclass <XGGoToElevator-request> (roslisp-msg-protocol:ros-message)
  ((enter_method
    :reader enter_method
    :initarg :enter_method
    :type cl:string
    :initform ""))
)

(cl:defclass XGGoToElevator-request (<XGGoToElevator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGGoToElevator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGGoToElevator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGGoToElevator-request> is deprecated: use dg_msgs-srv:XGGoToElevator-request instead.")))

(cl:ensure-generic-function 'enter_method-val :lambda-list '(m))
(cl:defmethod enter_method-val ((m <XGGoToElevator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:enter_method-val is deprecated.  Use dg_msgs-srv:enter_method instead.")
  (enter_method m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGGoToElevator-request>) ostream)
  "Serializes a message object of type '<XGGoToElevator-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'enter_method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'enter_method))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGGoToElevator-request>) istream)
  "Deserializes a message object of type '<XGGoToElevator-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'enter_method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'enter_method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGGoToElevator-request>)))
  "Returns string type for a service object of type '<XGGoToElevator-request>"
  "dg_msgs/XGGoToElevatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGGoToElevator-request)))
  "Returns string type for a service object of type 'XGGoToElevator-request"
  "dg_msgs/XGGoToElevatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGGoToElevator-request>)))
  "Returns md5sum for a message object of type '<XGGoToElevator-request>"
  "965d0474a6d7d045c4a405625226a152")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGGoToElevator-request)))
  "Returns md5sum for a message object of type 'XGGoToElevator-request"
  "965d0474a6d7d045c4a405625226a152")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGGoToElevator-request>)))
  "Returns full string definition for message of type '<XGGoToElevator-request>"
  (cl:format cl:nil "# 变量说明~%# enter_method 进入电梯的方式，从左侧进入、从右侧进入~%string enter_method~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGGoToElevator-request)))
  "Returns full string definition for message of type 'XGGoToElevator-request"
  (cl:format cl:nil "# 变量说明~%# enter_method 进入电梯的方式，从左侧进入、从右侧进入~%string enter_method~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGGoToElevator-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'enter_method))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGGoToElevator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XGGoToElevator-request
    (cl:cons ':enter_method (enter_method msg))
))
;//! \htmlinclude XGGoToElevator-response.msg.html

(cl:defclass <XGGoToElevator-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass XGGoToElevator-response (<XGGoToElevator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGGoToElevator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGGoToElevator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGGoToElevator-response> is deprecated: use dg_msgs-srv:XGGoToElevator-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <XGGoToElevator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGGoToElevator-response>) ostream)
  "Serializes a message object of type '<XGGoToElevator-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGGoToElevator-response>) istream)
  "Deserializes a message object of type '<XGGoToElevator-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGGoToElevator-response>)))
  "Returns string type for a service object of type '<XGGoToElevator-response>"
  "dg_msgs/XGGoToElevatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGGoToElevator-response)))
  "Returns string type for a service object of type 'XGGoToElevator-response"
  "dg_msgs/XGGoToElevatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGGoToElevator-response>)))
  "Returns md5sum for a message object of type '<XGGoToElevator-response>"
  "965d0474a6d7d045c4a405625226a152")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGGoToElevator-response)))
  "Returns md5sum for a message object of type 'XGGoToElevator-response"
  "965d0474a6d7d045c4a405625226a152")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGGoToElevator-response>)))
  "Returns full string definition for message of type '<XGGoToElevator-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGGoToElevator-response)))
  "Returns full string definition for message of type 'XGGoToElevator-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGGoToElevator-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGGoToElevator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XGGoToElevator-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XGGoToElevator)))
  'XGGoToElevator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XGGoToElevator)))
  'XGGoToElevator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGGoToElevator)))
  "Returns string type for a service object of type '<XGGoToElevator>"
  "dg_msgs/XGGoToElevator")