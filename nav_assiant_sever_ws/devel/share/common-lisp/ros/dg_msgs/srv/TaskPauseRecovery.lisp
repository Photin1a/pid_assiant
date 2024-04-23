; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TaskPauseRecovery-request.msg.html

(cl:defclass <TaskPauseRecovery-request> (roslisp-msg-protocol:ros-message)
  ((state_index
    :reader state_index
    :initarg :state_index
    :type cl:integer
    :initform 0))
)

(cl:defclass TaskPauseRecovery-request (<TaskPauseRecovery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskPauseRecovery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskPauseRecovery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TaskPauseRecovery-request> is deprecated: use dg_msgs-srv:TaskPauseRecovery-request instead.")))

(cl:ensure-generic-function 'state_index-val :lambda-list '(m))
(cl:defmethod state_index-val ((m <TaskPauseRecovery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_index-val is deprecated.  Use dg_msgs-srv:state_index instead.")
  (state_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskPauseRecovery-request>) ostream)
  "Serializes a message object of type '<TaskPauseRecovery-request>"
  (cl:let* ((signed (cl:slot-value msg 'state_index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskPauseRecovery-request>) istream)
  "Deserializes a message object of type '<TaskPauseRecovery-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskPauseRecovery-request>)))
  "Returns string type for a service object of type '<TaskPauseRecovery-request>"
  "dg_msgs/TaskPauseRecoveryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskPauseRecovery-request)))
  "Returns string type for a service object of type 'TaskPauseRecovery-request"
  "dg_msgs/TaskPauseRecoveryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskPauseRecovery-request>)))
  "Returns md5sum for a message object of type '<TaskPauseRecovery-request>"
  "3ad2694b73fbad8069428f9f9462a738")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskPauseRecovery-request)))
  "Returns md5sum for a message object of type 'TaskPauseRecovery-request"
  "3ad2694b73fbad8069428f9f9462a738")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskPauseRecovery-request>)))
  "Returns full string definition for message of type '<TaskPauseRecovery-request>"
  (cl:format cl:nil "int32 state_index    # pause(1), recorvery(2), terminate(-1), do nothing(0)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskPauseRecovery-request)))
  "Returns full string definition for message of type 'TaskPauseRecovery-request"
  (cl:format cl:nil "int32 state_index    # pause(1), recorvery(2), terminate(-1), do nothing(0)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskPauseRecovery-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskPauseRecovery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskPauseRecovery-request
    (cl:cons ':state_index (state_index msg))
))
;//! \htmlinclude TaskPauseRecovery-response.msg.html

(cl:defclass <TaskPauseRecovery-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass TaskPauseRecovery-response (<TaskPauseRecovery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskPauseRecovery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskPauseRecovery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TaskPauseRecovery-response> is deprecated: use dg_msgs-srv:TaskPauseRecovery-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <TaskPauseRecovery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskPauseRecovery-response>) ostream)
  "Serializes a message object of type '<TaskPauseRecovery-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskPauseRecovery-response>) istream)
  "Deserializes a message object of type '<TaskPauseRecovery-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskPauseRecovery-response>)))
  "Returns string type for a service object of type '<TaskPauseRecovery-response>"
  "dg_msgs/TaskPauseRecoveryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskPauseRecovery-response)))
  "Returns string type for a service object of type 'TaskPauseRecovery-response"
  "dg_msgs/TaskPauseRecoveryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskPauseRecovery-response>)))
  "Returns md5sum for a message object of type '<TaskPauseRecovery-response>"
  "3ad2694b73fbad8069428f9f9462a738")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskPauseRecovery-response)))
  "Returns md5sum for a message object of type 'TaskPauseRecovery-response"
  "3ad2694b73fbad8069428f9f9462a738")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskPauseRecovery-response>)))
  "Returns full string definition for message of type '<TaskPauseRecovery-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskPauseRecovery-response)))
  "Returns full string definition for message of type 'TaskPauseRecovery-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskPauseRecovery-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskPauseRecovery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskPauseRecovery-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TaskPauseRecovery)))
  'TaskPauseRecovery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TaskPauseRecovery)))
  'TaskPauseRecovery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskPauseRecovery)))
  "Returns string type for a service object of type '<TaskPauseRecovery>"
  "dg_msgs/TaskPauseRecovery")