; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude RobotArmAcqMove-request.msg.html

(cl:defclass <RobotArmAcqMove-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform ""))
)

(cl:defclass RobotArmAcqMove-request (<RobotArmAcqMove-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmAcqMove-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmAcqMove-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmAcqMove-request> is deprecated: use dg_msgs-srv:RobotArmAcqMove-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <RobotArmAcqMove-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmAcqMove-request>) ostream)
  "Serializes a message object of type '<RobotArmAcqMove-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmAcqMove-request>) istream)
  "Deserializes a message object of type '<RobotArmAcqMove-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmAcqMove-request>)))
  "Returns string type for a service object of type '<RobotArmAcqMove-request>"
  "dg_msgs/RobotArmAcqMoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqMove-request)))
  "Returns string type for a service object of type 'RobotArmAcqMove-request"
  "dg_msgs/RobotArmAcqMoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmAcqMove-request>)))
  "Returns md5sum for a message object of type '<RobotArmAcqMove-request>"
  "859763e90581dbf8fc57b389728da002")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmAcqMove-request)))
  "Returns md5sum for a message object of type 'RobotArmAcqMove-request"
  "859763e90581dbf8fc57b389728da002")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmAcqMove-request>)))
  "Returns full string definition for message of type '<RobotArmAcqMove-request>"
  (cl:format cl:nil "string number       # 设备编码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmAcqMove-request)))
  "Returns full string definition for message of type 'RobotArmAcqMove-request"
  (cl:format cl:nil "string number       # 设备编码~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmAcqMove-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmAcqMove-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmAcqMove-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude RobotArmAcqMove-response.msg.html

(cl:defclass <RobotArmAcqMove-response> (roslisp-msg-protocol:ros-message)
  ((state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:UniversalStateInfo
    :initform (cl:make-instance 'dg_msgs-msg:UniversalStateInfo))
   (image_name
    :reader image_name
    :initarg :image_name
    :type cl:string
    :initform ""))
)

(cl:defclass RobotArmAcqMove-response (<RobotArmAcqMove-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotArmAcqMove-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotArmAcqMove-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<RobotArmAcqMove-response> is deprecated: use dg_msgs-srv:RobotArmAcqMove-response instead.")))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <RobotArmAcqMove-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_info-val is deprecated.  Use dg_msgs-srv:state_info instead.")
  (state_info m))

(cl:ensure-generic-function 'image_name-val :lambda-list '(m))
(cl:defmethod image_name-val ((m <RobotArmAcqMove-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:image_name-val is deprecated.  Use dg_msgs-srv:image_name instead.")
  (image_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotArmAcqMove-response>) ostream)
  "Serializes a message object of type '<RobotArmAcqMove-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotArmAcqMove-response>) istream)
  "Deserializes a message object of type '<RobotArmAcqMove-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotArmAcqMove-response>)))
  "Returns string type for a service object of type '<RobotArmAcqMove-response>"
  "dg_msgs/RobotArmAcqMoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqMove-response)))
  "Returns string type for a service object of type 'RobotArmAcqMove-response"
  "dg_msgs/RobotArmAcqMoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotArmAcqMove-response>)))
  "Returns md5sum for a message object of type '<RobotArmAcqMove-response>"
  "859763e90581dbf8fc57b389728da002")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotArmAcqMove-response)))
  "Returns md5sum for a message object of type 'RobotArmAcqMove-response"
  "859763e90581dbf8fc57b389728da002")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotArmAcqMove-response>)))
  "Returns full string definition for message of type '<RobotArmAcqMove-response>"
  (cl:format cl:nil "UniversalStateInfo  state_info~%string image_name~%  ~%# 0 表示成功；~%# error: 1 表示运动失败；~%# warning: 2 表示规划失败 （运动失败就不能再进行采集任务的执行了，规划失败也就是目标像点无法到达）~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotArmAcqMove-response)))
  "Returns full string definition for message of type 'RobotArmAcqMove-response"
  (cl:format cl:nil "UniversalStateInfo  state_info~%string image_name~%  ~%# 0 表示成功；~%# error: 1 表示运动失败；~%# warning: 2 表示规划失败 （运动失败就不能再进行采集任务的执行了，规划失败也就是目标像点无法到达）~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotArmAcqMove-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
     4 (cl:length (cl:slot-value msg 'image_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotArmAcqMove-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotArmAcqMove-response
    (cl:cons ':state_info (state_info msg))
    (cl:cons ':image_name (image_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotArmAcqMove)))
  'RobotArmAcqMove-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotArmAcqMove)))
  'RobotArmAcqMove-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotArmAcqMove)))
  "Returns string type for a service object of type '<RobotArmAcqMove>"
  "dg_msgs/RobotArmAcqMove")