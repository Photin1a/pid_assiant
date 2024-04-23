; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude XGSwitchMap-request.msg.html

(cl:defclass <XGSwitchMap-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (allow_move
    :reader allow_move
    :initarg :allow_move
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass XGSwitchMap-request (<XGSwitchMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGSwitchMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGSwitchMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGSwitchMap-request> is deprecated: use dg_msgs-srv:XGSwitchMap-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <XGSwitchMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:map_name-val is deprecated.  Use dg_msgs-srv:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'allow_move-val :lambda-list '(m))
(cl:defmethod allow_move-val ((m <XGSwitchMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:allow_move-val is deprecated.  Use dg_msgs-srv:allow_move instead.")
  (allow_move m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGSwitchMap-request>) ostream)
  "Serializes a message object of type '<XGSwitchMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_move) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGSwitchMap-request>) istream)
  "Deserializes a message object of type '<XGSwitchMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'allow_move) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGSwitchMap-request>)))
  "Returns string type for a service object of type '<XGSwitchMap-request>"
  "dg_msgs/XGSwitchMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGSwitchMap-request)))
  "Returns string type for a service object of type 'XGSwitchMap-request"
  "dg_msgs/XGSwitchMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGSwitchMap-request>)))
  "Returns md5sum for a message object of type '<XGSwitchMap-request>"
  "65916606f07351a8c2635db69ef80d88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGSwitchMap-request)))
  "Returns md5sum for a message object of type 'XGSwitchMap-request"
  "65916606f07351a8c2635db69ef80d88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGSwitchMap-request>)))
  "Returns full string definition for message of type '<XGSwitchMap-request>"
  (cl:format cl:nil "string map_name~%bool allow_move                     # 当切换地图的时候是否允许移动到地图切换点【严禁缺省】因为涉及到底盘运动和电梯待命等信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGSwitchMap-request)))
  "Returns full string definition for message of type 'XGSwitchMap-request"
  (cl:format cl:nil "string map_name~%bool allow_move                     # 当切换地图的时候是否允许移动到地图切换点【严禁缺省】因为涉及到底盘运动和电梯待命等信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGSwitchMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGSwitchMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'XGSwitchMap-request
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':allow_move (allow_move msg))
))
;//! \htmlinclude XGSwitchMap-response.msg.html

(cl:defclass <XGSwitchMap-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass XGSwitchMap-response (<XGSwitchMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <XGSwitchMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'XGSwitchMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<XGSwitchMap-response> is deprecated: use dg_msgs-srv:XGSwitchMap-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <XGSwitchMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <XGSwitchMap-response>) ostream)
  "Serializes a message object of type '<XGSwitchMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <XGSwitchMap-response>) istream)
  "Deserializes a message object of type '<XGSwitchMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<XGSwitchMap-response>)))
  "Returns string type for a service object of type '<XGSwitchMap-response>"
  "dg_msgs/XGSwitchMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGSwitchMap-response)))
  "Returns string type for a service object of type 'XGSwitchMap-response"
  "dg_msgs/XGSwitchMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<XGSwitchMap-response>)))
  "Returns md5sum for a message object of type '<XGSwitchMap-response>"
  "65916606f07351a8c2635db69ef80d88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'XGSwitchMap-response)))
  "Returns md5sum for a message object of type 'XGSwitchMap-response"
  "65916606f07351a8c2635db69ef80d88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<XGSwitchMap-response>)))
  "Returns full string definition for message of type '<XGSwitchMap-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'XGSwitchMap-response)))
  "Returns full string definition for message of type 'XGSwitchMap-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <XGSwitchMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <XGSwitchMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'XGSwitchMap-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'XGSwitchMap)))
  'XGSwitchMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'XGSwitchMap)))
  'XGSwitchMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'XGSwitchMap)))
  "Returns string type for a service object of type '<XGSwitchMap>"
  "dg_msgs/XGSwitchMap")