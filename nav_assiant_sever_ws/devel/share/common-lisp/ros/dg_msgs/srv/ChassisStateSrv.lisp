; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude ChassisStateSrv-request.msg.html

(cl:defclass <ChassisStateSrv-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ChassisStateSrv-request (<ChassisStateSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisStateSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisStateSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<ChassisStateSrv-request> is deprecated: use dg_msgs-srv:ChassisStateSrv-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisStateSrv-request>) ostream)
  "Serializes a message object of type '<ChassisStateSrv-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisStateSrv-request>) istream)
  "Deserializes a message object of type '<ChassisStateSrv-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisStateSrv-request>)))
  "Returns string type for a service object of type '<ChassisStateSrv-request>"
  "dg_msgs/ChassisStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisStateSrv-request)))
  "Returns string type for a service object of type 'ChassisStateSrv-request"
  "dg_msgs/ChassisStateSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisStateSrv-request>)))
  "Returns md5sum for a message object of type '<ChassisStateSrv-request>"
  "b6dae2c19e5871a707bd9c92ebb1cef2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisStateSrv-request)))
  "Returns md5sum for a message object of type 'ChassisStateSrv-request"
  "b6dae2c19e5871a707bd9c92ebb1cef2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisStateSrv-request>)))
  "Returns full string definition for message of type '<ChassisStateSrv-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisStateSrv-request)))
  "Returns full string definition for message of type 'ChassisStateSrv-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisStateSrv-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisStateSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisStateSrv-request
))
;//! \htmlinclude ChassisStateSrv-response.msg.html

(cl:defclass <ChassisStateSrv-response> (roslisp-msg-protocol:ros-message)
  ((chassis_info
    :reader chassis_info
    :initarg :chassis_info
    :type dg_msgs-msg:ChassisInfo
    :initform (cl:make-instance 'dg_msgs-msg:ChassisInfo)))
)

(cl:defclass ChassisStateSrv-response (<ChassisStateSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisStateSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisStateSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<ChassisStateSrv-response> is deprecated: use dg_msgs-srv:ChassisStateSrv-response instead.")))

(cl:ensure-generic-function 'chassis_info-val :lambda-list '(m))
(cl:defmethod chassis_info-val ((m <ChassisStateSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:chassis_info-val is deprecated.  Use dg_msgs-srv:chassis_info instead.")
  (chassis_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisStateSrv-response>) ostream)
  "Serializes a message object of type '<ChassisStateSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'chassis_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisStateSrv-response>) istream)
  "Deserializes a message object of type '<ChassisStateSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'chassis_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisStateSrv-response>)))
  "Returns string type for a service object of type '<ChassisStateSrv-response>"
  "dg_msgs/ChassisStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisStateSrv-response)))
  "Returns string type for a service object of type 'ChassisStateSrv-response"
  "dg_msgs/ChassisStateSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisStateSrv-response>)))
  "Returns md5sum for a message object of type '<ChassisStateSrv-response>"
  "b6dae2c19e5871a707bd9c92ebb1cef2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisStateSrv-response)))
  "Returns md5sum for a message object of type 'ChassisStateSrv-response"
  "b6dae2c19e5871a707bd9c92ebb1cef2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisStateSrv-response>)))
  "Returns full string definition for message of type '<ChassisStateSrv-response>"
  (cl:format cl:nil "ChassisInfo chassis_info~%~%~%================================================================================~%MSG: dg_msgs/ChassisInfo~%EquipmentCommon equipment~%float32 min_linear_speed~%float32 max_linear_speed~%float32 linear_speed_scaling~%float32 min_angular_speed~%float32 max_angular_speed~%float32 angular_speed_scaling~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisStateSrv-response)))
  "Returns full string definition for message of type 'ChassisStateSrv-response"
  (cl:format cl:nil "ChassisInfo chassis_info~%~%~%================================================================================~%MSG: dg_msgs/ChassisInfo~%EquipmentCommon equipment~%float32 min_linear_speed~%float32 max_linear_speed~%float32 linear_speed_scaling~%float32 min_angular_speed~%float32 max_angular_speed~%float32 angular_speed_scaling~%~%================================================================================~%MSG: dg_msgs/EquipmentCommon~%int32 equipment_id~%string equipment_name~%bool connected~%uint64 connected_time~%string model~%string manufacturer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisStateSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'chassis_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisStateSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisStateSrv-response
    (cl:cons ':chassis_info (chassis_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChassisStateSrv)))
  'ChassisStateSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChassisStateSrv)))
  'ChassisStateSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisStateSrv)))
  "Returns string type for a service object of type '<ChassisStateSrv>"
  "dg_msgs/ChassisStateSrv")