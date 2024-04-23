; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmAcqPauseRecovery-request.msg.html

(cl:defclass <RobotArmAcqPauseRecovery-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (state_index
    :reader state_index
    :initarg :state_index
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotArmAcqPauseRecovery-request (<RobotArmAcqPauseRecovery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmAcqPauseRecovery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmAcqPauseRecovery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmAcqPauseRecovery-request> is deprecated: use dg_msgs-srv:RobotArmAcqPauseRecovery-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmAcqPauseRecovery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'state_index-val :lambda-list '(m))
(cl:defmethod state_index-val ((m <RobotArmAcqPauseRecovery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_index-val is deprecated.  Use dg_msgs-srv:state_index instead.")
  (state_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmAcqPauseRecovery-request>) ostream)
  "Serializes a message object of type '<RobotArmAcqPauseRecovery-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let* ((signed (cl:slot-value msg 'state_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmAcqPauseRecovery-request>) istream)
  "Deserializes a message object of type '<RobotArmAcqPauseRecovery-request>"
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
      (cl:setf (cl:slot-value msg 'state_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmAcqPauseRecovery-request>)))
  "Returns string type for a service object of type '<RobotArmAcqPauseRecovery-request>"
  "dg_msgs/RobotArmAcqPauseRecoveryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqPauseRecovery-request)))
  "Returns string type for a service object of type 'RobotArmAcqPauseRecovery-request"
  "dg_msgs/RobotArmAcqPauseRecoveryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmAcqPauseRecovery-request>)))
  "Returns md5sum for a message object of type '<RobotArmAcqPauseRecovery-request>"
  "fa4fc94033ee71ead6be9ed12f3a7bc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmAcqPauseRecovery-request)))
  "Returns md5sum for a message object of type 'RobotArmAcqPauseRecovery-request"
  "fa4fc94033ee71ead6be9ed12f3a7bc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmAcqPauseRecovery-request>)))
  "Returns full string definition for message of type '<RobotArmAcqPauseRecovery-request>"
  (cl:format cl:nil "string number        # 设备编码~%int32 state_index    # pause(1), recovery(2), terminate(-1)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmAcqPauseRecovery-request)))
  "Returns full string definition for message of type 'RobotArmAcqPauseRecovery-request"
  (cl:format cl:nil "string number        # 设备编码~%int32 state_index    # pause(1), recovery(2), terminate(-1)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmAcqPauseRecovery-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmAcqPauseRecovery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmAcqPauseRecovery-request
    (cl:cons ':number (number msg))
    (cl:cons ':state_index (state_index msg))
))
;//! \htmlinclude RobotArmAcqPauseRecovery-response.msg.html

(cl:defclass <RobotArmAcqPauseRecovery-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass RobotArmAcqPauseRecovery-response (<RobotArmAcqPauseRecovery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmAcqPauseRecovery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmAcqPauseRecovery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmAcqPauseRecovery-response> is deprecated: use dg_msgs-srv:RobotArmAcqPauseRecovery-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <RobotArmAcqPauseRecovery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmAcqPauseRecovery-response>) ostream)
  "Serializes a message object of type '<RobotArmAcqPauseRecovery-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmAcqPauseRecovery-response>) istream)
  "Deserializes a message object of type '<RobotArmAcqPauseRecovery-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmAcqPauseRecovery-response>)))
  "Returns string type for a service object of type '<RobotArmAcqPauseRecovery-response>"
  "dg_msgs/RobotArmAcqPauseRecoveryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqPauseRecovery-response)))
  "Returns string type for a service object of type 'RobotArmAcqPauseRecovery-response"
  "dg_msgs/RobotArmAcqPauseRecoveryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmAcqPauseRecovery-response>)))
  "Returns md5sum for a message object of type '<RobotArmAcqPauseRecovery-response>"
  "fa4fc94033ee71ead6be9ed12f3a7bc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmAcqPauseRecovery-response)))
  "Returns md5sum for a message object of type 'RobotArmAcqPauseRecovery-response"
  "fa4fc94033ee71ead6be9ed12f3a7bc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmAcqPauseRecovery-response>)))
  "Returns full string definition for message of type '<RobotArmAcqPauseRecovery-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmAcqPauseRecovery-response)))
  "Returns full string definition for message of type 'RobotArmAcqPauseRecovery-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmAcqPauseRecovery-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmAcqPauseRecovery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmAcqPauseRecovery-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmAcqPauseRecovery)))
  'RobotArmAcqPauseRecovery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmAcqPauseRecovery)))
  'RobotArmAcqPauseRecovery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqPauseRecovery)))
  "Returns string type for a service object of type '<RobotArmAcqPauseRecovery>"
  "dg_msgs/RobotArmAcqPauseRecovery")