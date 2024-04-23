; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TunnelModel-request.msg.html

(cl:defclass <TunnelModel-request> (roslisp-msg-protocol:ros-message)
  ((topic_lidar
    :reader topic_lidar
    :initarg :topic_lidar
    :type cl:string
    :initform "")
   (reset
    :reader reset
    :initarg :reset
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TunnelModel-request (<TunnelModel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TunnelModel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TunnelModel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TunnelModel-request> is deprecated: use dg_msgs-srv:TunnelModel-request instead.")))

(cl:ensure-generic-function 'topic_lidar-val :lambda-list '(m))
(cl:defmethod topic_lidar-val ((m <TunnelModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:topic_lidar-val is deprecated.  Use dg_msgs-srv:topic_lidar instead.")
  (topic_lidar m))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <TunnelModel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:reset-val is deprecated.  Use dg_msgs-srv:reset instead.")
  (reset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TunnelModel-request>) ostream)
  "Serializes a message object of type '<TunnelModel-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_lidar))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_lidar))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TunnelModel-request>) istream)
  "Deserializes a message object of type '<TunnelModel-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_lidar) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_lidar) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'reset) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TunnelModel-request>)))
  "Returns string type for a service object of type '<TunnelModel-request>"
  "dg_msgs/TunnelModelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TunnelModel-request)))
  "Returns string type for a service object of type 'TunnelModel-request"
  "dg_msgs/TunnelModelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TunnelModel-request>)))
  "Returns md5sum for a message object of type '<TunnelModel-request>"
  "8ba35436416732eff731a783354a9a3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TunnelModel-request)))
  "Returns md5sum for a message object of type 'TunnelModel-request"
  "8ba35436416732eff731a783354a9a3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TunnelModel-request>)))
  "Returns full string definition for message of type '<TunnelModel-request>"
  (cl:format cl:nil "string topic_lidar~%bool reset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TunnelModel-request)))
  "Returns full string definition for message of type 'TunnelModel-request"
  (cl:format cl:nil "string topic_lidar~%bool reset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TunnelModel-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic_lidar))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TunnelModel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TunnelModel-request
    (cl:cons ':topic_lidar (topic_lidar msg))
    (cl:cons ':reset (reset msg))
))
;//! \htmlinclude TunnelModel-response.msg.html

(cl:defclass <TunnelModel-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
)

(cl:defclass TunnelModel-response (<TunnelModel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TunnelModel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TunnelModel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TunnelModel-response> is deprecated: use dg_msgs-srv:TunnelModel-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <TunnelModel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TunnelModel-response>) ostream)
  "Serializes a message object of type '<TunnelModel-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TunnelModel-response>) istream)
  "Deserializes a message object of type '<TunnelModel-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TunnelModel-response>)))
  "Returns string type for a service object of type '<TunnelModel-response>"
  "dg_msgs/TunnelModelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TunnelModel-response)))
  "Returns string type for a service object of type 'TunnelModel-response"
  "dg_msgs/TunnelModelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TunnelModel-response>)))
  "Returns md5sum for a message object of type '<TunnelModel-response>"
  "8ba35436416732eff731a783354a9a3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TunnelModel-response)))
  "Returns md5sum for a message object of type 'TunnelModel-response"
  "8ba35436416732eff731a783354a9a3d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TunnelModel-response>)))
  "Returns full string definition for message of type '<TunnelModel-response>"
  (cl:format cl:nil "~%UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TunnelModel-response)))
  "Returns full string definition for message of type 'TunnelModel-response"
  (cl:format cl:nil "~%UniversalStateInfo  state_info~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TunnelModel-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TunnelModel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TunnelModel-response
    (cl:cons ':state_info (state_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TunnelModel)))
  'TunnelModel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TunnelModel)))
  'TunnelModel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TunnelModel)))
  "Returns string type for a service object of type '<TunnelModel>"
  "dg_msgs/TunnelModel")