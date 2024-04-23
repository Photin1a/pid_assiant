; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotStateSrv-request.msg.html

(cl:defclass <RobotStateSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotStateSrv-request (<RobotStateSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotStateSrv-request> is deprecated: use dg_msgs-srv:RobotStateSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateSrv-request>) ostream)
  "Serializes a message object of type '<RobotStateSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateSrv-request>) istream)
  "Deserializes a message object of type '<RobotStateSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateSrv-request>)))
  "Returns string type for a service object of type '<RobotStateSrv-request>"
  "dg_msgs/RobotStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateSrv-request)))
  "Returns string type for a service object of type 'RobotStateSrv-request"
  "dg_msgs/RobotStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateSrv-request>)))
  "Returns md5sum for a message object of type '<RobotStateSrv-request>"
  "7fd23f71870ecd30e0ef7b9251da4ebc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateSrv-request)))
  "Returns md5sum for a message object of type 'RobotStateSrv-request"
  "7fd23f71870ecd30e0ef7b9251da4ebc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateSrv-request>)))
  "Returns full string definition for message of type '<RobotStateSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateSrv-request)))
  "Returns full string definition for message of type 'RobotStateSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateSrv-request
))
;//! \htmlinclude RobotStateSrv-response.msg.html

(cl:defclass <RobotStateSrv-response> (roslisp-msg-protocol:ros-message)
  ((robot_info
    :reader robot_info
    :initarg :robot_info
    :type dg_msgs-msg:RobotInfo
    :initform (cl:make-instance 'dg_msgs-msg:RobotInfo)))
)

(cl:defclass RobotStateSrv-response (<RobotStateSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotStateSrv-response> is deprecated: use dg_msgs-srv:RobotStateSrv-response instead.")))

(cl:ensure-generic-function 'robot_info-val :lambda-list '(m))
(cl:defmethod robot_info-val ((m <RobotStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:robot_info-val is deprecated.  Use dg_msgs-srv:robot_info instead.")
  (robot_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateSrv-response>) ostream)
  "Serializes a message object of type '<RobotStateSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateSrv-response>) istream)
  "Deserializes a message object of type '<RobotStateSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateSrv-response>)))
  "Returns string type for a service object of type '<RobotStateSrv-response>"
  "dg_msgs/RobotStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateSrv-response)))
  "Returns string type for a service object of type 'RobotStateSrv-response"
  "dg_msgs/RobotStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateSrv-response>)))
  "Returns md5sum for a message object of type '<RobotStateSrv-response>"
  "7fd23f71870ecd30e0ef7b9251da4ebc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateSrv-response)))
  "Returns md5sum for a message object of type 'RobotStateSrv-response"
  "7fd23f71870ecd30e0ef7b9251da4ebc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateSrv-response>)))
  "Returns full string definition for message of type '<RobotStateSrv-response>"
  (cl:format cl:nil "RobotInfo robot_info~%~%~%================================================================================~%MSG: dg_msgs/RobotInfo~%string robot_name~%string robot_model~%string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）~%int32 battery_level # 0 = empty, 100 = full~%int32 exception_code        # 异常码~%string exception_message    # 异常信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateSrv-response)))
  "Returns full string definition for message of type 'RobotStateSrv-response"
  (cl:format cl:nil "RobotInfo robot_info~%~%~%================================================================================~%MSG: dg_msgs/RobotInfo~%string robot_name~%string robot_model~%string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）~%int32 battery_level # 0 = empty, 100 = full~%int32 exception_code        # 异常码~%string exception_message    # 异常信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateSrv-response
    (cl:cons ':robot_info (robot_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotStateSrv)))
  'RobotStateSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotStateSrv)))
  'RobotStateSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateSrv)))
  "Returns string type for a service object of type '<RobotStateSrv>"
  "dg_msgs/RobotStateSrv")