; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude SetNavMode-request.msg.html

(cl:defclass <SetNavMode-request> (roslisp-msg-protocol:ros-message)
  ((nav_mode
    :reader nav_mode
    :initarg :nav_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass SetNavMode-request (<SetNavMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SetNavMode-request> is deprecated: use dg_msgs-srv:SetNavMode-request instead.")))

(cl:ensure-generic-function 'nav_mode-val :lambda-list '(m))
(cl:defmethod nav_mode-val ((m <SetNavMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:nav_mode-val is deprecated.  Use dg_msgs-srv:nav_mode instead.")
  (nav_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavMode-request>) ostream)
  "Serializes a message object of type '<SetNavMode-request>"
  (cl:let* ((signed (cl:slot-value msg 'nav_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavMode-request>) istream)
  "Deserializes a message object of type '<SetNavMode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nav_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavMode-request>)))
  "Returns string type for a service object of type '<SetNavMode-request>"
  "dg_msgs/SetNavModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavMode-request)))
  "Returns string type for a service object of type 'SetNavMode-request"
  "dg_msgs/SetNavModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavMode-request>)))
  "Returns md5sum for a message object of type '<SetNavMode-request>"
  "5866fc4438ca78f5db31e326c2742d07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavMode-request)))
  "Returns md5sum for a message object of type 'SetNavMode-request"
  "5866fc4438ca78f5db31e326c2742d07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavMode-request>)))
  "Returns full string definition for message of type '<SetNavMode-request>"
  (cl:format cl:nil "int32 nav_mode      # 导航模式 1：手动模式，通过线速度、角速度控制；2：站点导航~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavMode-request)))
  "Returns full string definition for message of type 'SetNavMode-request"
  (cl:format cl:nil "int32 nav_mode      # 导航模式 1：手动模式，通过线速度、角速度控制；2：站点导航~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavMode-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavMode-request
    (cl:cons ':nav_mode (nav_mode msg))
))
;//! \htmlinclude SetNavMode-response.msg.html

(cl:defclass <SetNavMode-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SetNavMode-response (<SetNavMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SetNavMode-response> is deprecated: use dg_msgs-srv:SetNavMode-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetNavMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavMode-response>) ostream)
  "Serializes a message object of type '<SetNavMode-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavMode-response>) istream)
  "Deserializes a message object of type '<SetNavMode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavMode-response>)))
  "Returns string type for a service object of type '<SetNavMode-response>"
  "dg_msgs/SetNavModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavMode-response)))
  "Returns string type for a service object of type 'SetNavMode-response"
  "dg_msgs/SetNavModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavMode-response>)))
  "Returns md5sum for a message object of type '<SetNavMode-response>"
  "5866fc4438ca78f5db31e326c2742d07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavMode-response)))
  "Returns md5sum for a message object of type 'SetNavMode-response"
  "5866fc4438ca78f5db31e326c2742d07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavMode-response>)))
  "Returns full string definition for message of type '<SetNavMode-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavMode-response)))
  "Returns full string definition for message of type 'SetNavMode-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavMode-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavMode-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNavMode)))
  'SetNavMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNavMode)))
  'SetNavMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavMode)))
  "Returns string type for a service object of type '<SetNavMode>"
  "dg_msgs/SetNavMode")