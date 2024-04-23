; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude CurrentTeachingStopLocation-request.msg.html

(cl:defclass <CurrentTeachingStopLocation-request> (roslisp-msg-protocol:ros-message)
  ((sensor_type
    :reader sensor_type
    :initarg :sensor_type
    :type cl:string
    :initform "")
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:string
    :initform "")
   (directory
    :reader directory
    :initarg :directory
    :type cl:string
    :initform ""))
)

(cl:defclass CurrentTeachingStopLocation-request (<CurrentTeachingStopLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentTeachingStopLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentTeachingStopLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CurrentTeachingStopLocation-request> is deprecated: use dg_msgs-srv:CurrentTeachingStopLocation-request instead.")))

(cl:ensure-generic-function 'sensor_type-val :lambda-list '(m))
(cl:defmethod sensor_type-val ((m <CurrentTeachingStopLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:sensor_type-val is deprecated.  Use dg_msgs-srv:sensor_type instead.")
  (sensor_type m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <CurrentTeachingStopLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:sensor_id-val is deprecated.  Use dg_msgs-srv:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'directory-val :lambda-list '(m))
(cl:defmethod directory-val ((m <CurrentTeachingStopLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:directory-val is deprecated.  Use dg_msgs-srv:directory instead.")
  (directory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentTeachingStopLocation-request>) ostream)
  "Serializes a message object of type '<CurrentTeachingStopLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'directory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'directory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentTeachingStopLocation-request>) istream)
  "Deserializes a message object of type '<CurrentTeachingStopLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'directory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'directory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentTeachingStopLocation-request>)))
  "Returns string type for a service object of type '<CurrentTeachingStopLocation-request>"
  "dg_msgs/CurrentTeachingStopLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentTeachingStopLocation-request)))
  "Returns string type for a service object of type 'CurrentTeachingStopLocation-request"
  "dg_msgs/CurrentTeachingStopLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentTeachingStopLocation-request>)))
  "Returns md5sum for a message object of type '<CurrentTeachingStopLocation-request>"
  "974b4b79110aabe8a799f45ec4442dc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentTeachingStopLocation-request)))
  "Returns md5sum for a message object of type 'CurrentTeachingStopLocation-request"
  "974b4b79110aabe8a799f45ec4442dc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentTeachingStopLocation-request>)))
  "Returns full string definition for message of type '<CurrentTeachingStopLocation-request>"
  (cl:format cl:nil "# 示教停车点（采集点）    base_link~%string sensor_type         # 雷达（lidar）、精扫相机（camera）~%string sensor_id           # 雷达topic  相机分组编号~%string directory           # 数据存放目录~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentTeachingStopLocation-request)))
  "Returns full string definition for message of type 'CurrentTeachingStopLocation-request"
  (cl:format cl:nil "# 示教停车点（采集点）    base_link~%string sensor_type         # 雷达（lidar）、精扫相机（camera）~%string sensor_id           # 雷达topic  相机分组编号~%string directory           # 数据存放目录~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentTeachingStopLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sensor_type))
     4 (cl:length (cl:slot-value msg 'sensor_id))
     4 (cl:length (cl:slot-value msg 'directory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentTeachingStopLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentTeachingStopLocation-request
    (cl:cons ':sensor_type (sensor_type msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':directory (directory msg))
))
;//! \htmlinclude CurrentTeachingStopLocation-response.msg.html

(cl:defclass <CurrentTeachingStopLocation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (data_file_path
    :reader data_file_path
    :initarg :data_file_path
    :type cl:string
    :initform ""))
)

(cl:defclass CurrentTeachingStopLocation-response (<CurrentTeachingStopLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentTeachingStopLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentTeachingStopLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CurrentTeachingStopLocation-response> is deprecated: use dg_msgs-srv:CurrentTeachingStopLocation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CurrentTeachingStopLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'data_file_path-val :lambda-list '(m))
(cl:defmethod data_file_path-val ((m <CurrentTeachingStopLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:data_file_path-val is deprecated.  Use dg_msgs-srv:data_file_path instead.")
  (data_file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentTeachingStopLocation-response>) ostream)
  "Serializes a message object of type '<CurrentTeachingStopLocation-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentTeachingStopLocation-response>) istream)
  "Deserializes a message object of type '<CurrentTeachingStopLocation-response>"
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
      (cl:setf (cl:slot-value msg 'data_file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentTeachingStopLocation-response>)))
  "Returns string type for a service object of type '<CurrentTeachingStopLocation-response>"
  "dg_msgs/CurrentTeachingStopLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentTeachingStopLocation-response)))
  "Returns string type for a service object of type 'CurrentTeachingStopLocation-response"
  "dg_msgs/CurrentTeachingStopLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentTeachingStopLocation-response>)))
  "Returns md5sum for a message object of type '<CurrentTeachingStopLocation-response>"
  "974b4b79110aabe8a799f45ec4442dc5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentTeachingStopLocation-response)))
  "Returns md5sum for a message object of type 'CurrentTeachingStopLocation-response"
  "974b4b79110aabe8a799f45ec4442dc5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentTeachingStopLocation-response>)))
  "Returns full string definition for message of type '<CurrentTeachingStopLocation-response>"
  (cl:format cl:nil "int32 result             # 0: 成功  非0：失败~%string data_file_path    # 采集数据存放路径~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentTeachingStopLocation-response)))
  "Returns full string definition for message of type 'CurrentTeachingStopLocation-response"
  (cl:format cl:nil "int32 result             # 0: 成功  非0：失败~%string data_file_path    # 采集数据存放路径~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentTeachingStopLocation-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'data_file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentTeachingStopLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentTeachingStopLocation-response
    (cl:cons ':result (result msg))
    (cl:cons ':data_file_path (data_file_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CurrentTeachingStopLocation)))
  'CurrentTeachingStopLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CurrentTeachingStopLocation)))
  'CurrentTeachingStopLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentTeachingStopLocation)))
  "Returns string type for a service object of type '<CurrentTeachingStopLocation>"
  "dg_msgs/CurrentTeachingStopLocation")