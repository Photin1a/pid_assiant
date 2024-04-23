; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude SwitchMap-request.msg.html

(cl:defclass <SwitchMap-request> (roslisp-msg-protocol:ros-message)
  ((map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform ""))
)

(cl:defclass SwitchMap-request (<SwitchMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SwitchMap-request> is deprecated: use dg_msgs-srv:SwitchMap-request instead.")))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <SwitchMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:map_name-val is deprecated.  Use dg_msgs-srv:map_name instead.")
  (map_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchMap-request>) ostream)
  "Serializes a message object of type '<SwitchMap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchMap-request>) istream)
  "Deserializes a message object of type '<SwitchMap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchMap-request>)))
  "Returns string type for a service object of type '<SwitchMap-request>"
  "dg_msgs/SwitchMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMap-request)))
  "Returns string type for a service object of type 'SwitchMap-request"
  "dg_msgs/SwitchMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchMap-request>)))
  "Returns md5sum for a message object of type '<SwitchMap-request>"
  "7e4b71db1cbc0faaf16cd62f4aa73ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchMap-request)))
  "Returns md5sum for a message object of type 'SwitchMap-request"
  "7e4b71db1cbc0faaf16cd62f4aa73ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchMap-request>)))
  "Returns full string definition for message of type '<SwitchMap-request>"
  (cl:format cl:nil "# 切换地图 service name = /switch_map~%string map_name             # 要切换的题图名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchMap-request)))
  "Returns full string definition for message of type 'SwitchMap-request"
  (cl:format cl:nil "# 切换地图 service name = /switch_map~%string map_name             # 要切换的题图名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchMap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchMap-request
    (cl:cons ':map_name (map_name msg))
))
;//! \htmlinclude SwitchMap-response.msg.html

(cl:defclass <SwitchMap-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:string
    :initform ""))
)

(cl:defclass SwitchMap-response (<SwitchMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwitchMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwitchMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SwitchMap-response> is deprecated: use dg_msgs-srv:SwitchMap-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SwitchMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <SwitchMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:err_msg-val is deprecated.  Use dg_msgs-srv:err_msg instead.")
  (err_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwitchMap-response>) ostream)
  "Serializes a message object of type '<SwitchMap-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'err_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'err_msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwitchMap-response>) istream)
  "Deserializes a message object of type '<SwitchMap-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'err_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'err_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwitchMap-response>)))
  "Returns string type for a service object of type '<SwitchMap-response>"
  "dg_msgs/SwitchMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMap-response)))
  "Returns string type for a service object of type 'SwitchMap-response"
  "dg_msgs/SwitchMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwitchMap-response>)))
  "Returns md5sum for a message object of type '<SwitchMap-response>"
  "7e4b71db1cbc0faaf16cd62f4aa73ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwitchMap-response)))
  "Returns md5sum for a message object of type 'SwitchMap-response"
  "7e4b71db1cbc0faaf16cd62f4aa73ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwitchMap-response>)))
  "Returns full string definition for message of type '<SwitchMap-response>"
  (cl:format cl:nil "int32 result                # 0: 成功；非0: 失败~%string err_msg              # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwitchMap-response)))
  "Returns full string definition for message of type 'SwitchMap-response"
  (cl:format cl:nil "int32 result                # 0: 成功；非0: 失败~%string err_msg              # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwitchMap-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'err_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwitchMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SwitchMap-response
    (cl:cons ':result (result msg))
    (cl:cons ':err_msg (err_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SwitchMap)))
  'SwitchMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SwitchMap)))
  'SwitchMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwitchMap)))
  "Returns string type for a service object of type '<SwitchMap>"
  "dg_msgs/SwitchMap")