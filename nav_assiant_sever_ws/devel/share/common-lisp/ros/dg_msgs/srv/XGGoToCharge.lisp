; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude XGGoToCharge-request.msg.html

(cl:defclass <XGGoToCharge-request> (roslisp-msg-protocol:ros-message)
  ((allow_switch_map
    :reader allow_switch_map
    :initarg :allow_switch_map
    :type cl:boolean
    :initform cl:nil)
   (charger_station
    :reader charger_station
    :initarg :charger_station
    :type cl:string
    :initform ""))
)

(cl:defclass XGGoToCharge-request (<XGGoToCharge-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGGoToCharge-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGGoToCharge-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGGoToCharge-request> is deprecated: use dg_msgs-srv:XGGoToCharge-request instead.")))

(cl:ensure-generic-function 'allow_switch_map-val :lambda-list '(m))
(cl:defmethod allow_switch_map-val ((m <XGGoToCharge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:allow_switch_map-val is deprecated.  Use dg_msgs-srv:allow_switch_map instead.")
  (allow_switch_map m))

(cl:ensure-generic-function 'charger_station-val :lambda-list '(m))
(cl:defmethod charger_station-val ((m <XGGoToCharge-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:charger_station-val is deprecated.  Use dg_msgs-srv:charger_station instead.")
  (charger_station m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGGoToCharge-request>) ostream)
  "Serializes a message object of type '<XGGoToCharge-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_switch_map) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'charger_station))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'charger_station))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGGoToCharge-request>) istream)
  "Deserializes a message object of type '<XGGoToCharge-request>"
    (cl:setf (cl:slot-value msg 'allow_switch_map) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charger_station) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'charger_station) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGGoToCharge-request>)))
  "Returns string type for a service object of type '<XGGoToCharge-request>"
  "dg_msgs/XGGoToChargeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGGoToCharge-request)))
  "Returns string type for a service object of type 'XGGoToCharge-request"
  "dg_msgs/XGGoToChargeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGGoToCharge-request>)))
  "Returns md5sum for a message object of type '<XGGoToCharge-request>"
  "17a225b0388e872b5c33b08b315a6550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGGoToCharge-request)))
  "Returns md5sum for a message object of type 'XGGoToCharge-request"
  "17a225b0388e872b5c33b08b315a6550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGGoToCharge-request>)))
  "Returns full string definition for message of type '<XGGoToCharge-request>"
  (cl:format cl:nil "# 关键变量说明:~%# allow_switch_map: 是否允许切换地图，当车在坑道内的时候，底盘会对电梯进行调度~%~%bool allow_switch_map       # 【实验变量，暂未使用】是否允许自动切换地图并执行回充【严禁缺省】~%string charger_station      # 充电站站点名，如果缺省则会根据task_config的配置信息自动寻找最近的充电站~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGGoToCharge-request)))
  "Returns full string definition for message of type 'XGGoToCharge-request"
  (cl:format cl:nil "# 关键变量说明:~%# allow_switch_map: 是否允许切换地图，当车在坑道内的时候，底盘会对电梯进行调度~%~%bool allow_switch_map       # 【实验变量，暂未使用】是否允许自动切换地图并执行回充【严禁缺省】~%string charger_station      # 充电站站点名，如果缺省则会根据task_config的配置信息自动寻找最近的充电站~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGGoToCharge-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'charger_station))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGGoToCharge-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XGGoToCharge-request
    (cl:cons ':allow_switch_map (allow_switch_map msg))
    (cl:cons ':charger_station (charger_station msg))
))
;//! \htmlinclude XGGoToCharge-response.msg.html

(cl:defclass <XGGoToCharge-response> (roslisp-msg-protocol:ros-message)
  ((current_battery
    :reader current_battery
    :initarg :current_battery
    :type cl:float
    :initform 0.0)
   (is_charged
    :reader is_charged
    :initarg :is_charged
    :type cl:boolean
    :initform cl:nil)
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass XGGoToCharge-response (<XGGoToCharge-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGGoToCharge-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGGoToCharge-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGGoToCharge-response> is deprecated: use dg_msgs-srv:XGGoToCharge-response instead.")))

(cl:ensure-generic-function 'current_battery-val :lambda-list '(m))
(cl:defmethod current_battery-val ((m <XGGoToCharge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:current_battery-val is deprecated.  Use dg_msgs-srv:current_battery instead.")
  (current_battery m))

(cl:ensure-generic-function 'is_charged-val :lambda-list '(m))
(cl:defmethod is_charged-val ((m <XGGoToCharge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:is_charged-val is deprecated.  Use dg_msgs-srv:is_charged instead.")
  (is_charged m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <XGGoToCharge-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGGoToCharge-response>) ostream)
  "Serializes a message object of type '<XGGoToCharge-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_battery))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charged) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGGoToCharge-response>) istream)
  "Deserializes a message object of type '<XGGoToCharge-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_battery) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_charged) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGGoToCharge-response>)))
  "Returns string type for a service object of type '<XGGoToCharge-response>"
  "dg_msgs/XGGoToChargeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGGoToCharge-response)))
  "Returns string type for a service object of type 'XGGoToCharge-response"
  "dg_msgs/XGGoToChargeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGGoToCharge-response>)))
  "Returns md5sum for a message object of type '<XGGoToCharge-response>"
  "17a225b0388e872b5c33b08b315a6550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGGoToCharge-response)))
  "Returns md5sum for a message object of type 'XGGoToCharge-response"
  "17a225b0388e872b5c33b08b315a6550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGGoToCharge-response>)))
  "Returns full string definition for message of type '<XGGoToCharge-response>"
  (cl:format cl:nil "float32 current_battery     ~%bool is_charged~%UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGGoToCharge-response)))
  "Returns full string definition for message of type 'XGGoToCharge-response"
  (cl:format cl:nil "float32 current_battery     ~%bool is_charged~%UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGGoToCharge-response>))
  (cl:+ 0
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGGoToCharge-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XGGoToCharge-response
    (cl:cons ':current_battery (current_battery msg))
    (cl:cons ':is_charged (is_charged msg))
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XGGoToCharge)))
  'XGGoToCharge-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XGGoToCharge)))
  'XGGoToCharge-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGGoToCharge)))
  "Returns string type for a service object of type '<XGGoToCharge>"
  "dg_msgs/XGGoToCharge")