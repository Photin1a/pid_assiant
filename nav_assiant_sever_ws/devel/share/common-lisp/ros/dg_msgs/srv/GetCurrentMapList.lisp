; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude GetCurrentMapList-request.msg.html

(cl:defclass <GetCurrentMapList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetCurrentMapList-request (<GetCurrentMapList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentMapList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentMapList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetCurrentMapList-request> is deprecated: use dg_msgs-srv:GetCurrentMapList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentMapList-request>) ostream)
  "Serializes a message object of type '<GetCurrentMapList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentMapList-request>) istream)
  "Deserializes a message object of type '<GetCurrentMapList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentMapList-request>)))
  "Returns string type for a service object of type '<GetCurrentMapList-request>"
  "dg_msgs/GetCurrentMapListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapList-request)))
  "Returns string type for a service object of type 'GetCurrentMapList-request"
  "dg_msgs/GetCurrentMapListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentMapList-request>)))
  "Returns md5sum for a message object of type '<GetCurrentMapList-request>"
  "fc0b5e17cf98696526984caa6b27f884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentMapList-request)))
  "Returns md5sum for a message object of type 'GetCurrentMapList-request"
  "fc0b5e17cf98696526984caa6b27f884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentMapList-request>)))
  "Returns full string definition for message of type '<GetCurrentMapList-request>"
  (cl:format cl:nil "# 获取当前地图列表 service name = /get_current_map_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentMapList-request)))
  "Returns full string definition for message of type 'GetCurrentMapList-request"
  (cl:format cl:nil "# 获取当前地图列表 service name = /get_current_map_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentMapList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentMapList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentMapList-request
))
;//! \htmlinclude GetCurrentMapList-response.msg.html

(cl:defclass <GetCurrentMapList-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (err_msg
    :reader err_msg
    :initarg :err_msg
    :type cl:string
    :initform "")
   (map_names
    :reader map_names
    :initarg :map_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (current_map_name
    :reader current_map_name
    :initarg :current_map_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetCurrentMapList-response (<GetCurrentMapList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCurrentMapList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCurrentMapList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetCurrentMapList-response> is deprecated: use dg_msgs-srv:GetCurrentMapList-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetCurrentMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <GetCurrentMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:err_msg-val is deprecated.  Use dg_msgs-srv:err_msg instead.")
  (err_msg m))

(cl:ensure-generic-function 'map_names-val :lambda-list '(m))
(cl:defmethod map_names-val ((m <GetCurrentMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:map_names-val is deprecated.  Use dg_msgs-srv:map_names instead.")
  (map_names m))

(cl:ensure-generic-function 'current_map_name-val :lambda-list '(m))
(cl:defmethod current_map_name-val ((m <GetCurrentMapList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:current_map_name-val is deprecated.  Use dg_msgs-srv:current_map_name instead.")
  (current_map_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCurrentMapList-response>) ostream)
  "Serializes a message object of type '<GetCurrentMapList-response>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'map_names))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_map_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCurrentMapList-response>) istream)
  "Deserializes a message object of type '<GetCurrentMapList-response>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCurrentMapList-response>)))
  "Returns string type for a service object of type '<GetCurrentMapList-response>"
  "dg_msgs/GetCurrentMapListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapList-response)))
  "Returns string type for a service object of type 'GetCurrentMapList-response"
  "dg_msgs/GetCurrentMapListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCurrentMapList-response>)))
  "Returns md5sum for a message object of type '<GetCurrentMapList-response>"
  "fc0b5e17cf98696526984caa6b27f884")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCurrentMapList-response)))
  "Returns md5sum for a message object of type 'GetCurrentMapList-response"
  "fc0b5e17cf98696526984caa6b27f884")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCurrentMapList-response>)))
  "Returns full string definition for message of type '<GetCurrentMapList-response>"
  (cl:format cl:nil "int32 result                # 0: 成功；非0: 失败~%string err_msg              # 错误信息~%string[] map_names          # 所有地图列表~%string current_map_name     # 当前地图名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCurrentMapList-response)))
  "Returns full string definition for message of type 'GetCurrentMapList-response"
  (cl:format cl:nil "int32 result                # 0: 成功；非0: 失败~%string err_msg              # 错误信息~%string[] map_names          # 所有地图列表~%string current_map_name     # 当前地图名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCurrentMapList-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'err_msg))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'current_map_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCurrentMapList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCurrentMapList-response
    (cl:cons ':result (result msg))
    (cl:cons ':err_msg (err_msg msg))
    (cl:cons ':map_names (map_names msg))
    (cl:cons ':current_map_name (current_map_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCurrentMapList)))
  'GetCurrentMapList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCurrentMapList)))
  'GetCurrentMapList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCurrentMapList)))
  "Returns string type for a service object of type '<GetCurrentMapList>"
  "dg_msgs/GetCurrentMapList")