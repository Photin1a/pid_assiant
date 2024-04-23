; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude PresetStopLocation-request.msg.html

(cl:defclass <PresetStopLocation-request> (roslisp-msg-protocol:ros-message)
  ((lidar_topic
    :reader lidar_topic
    :initarg :lidar_topic
    :type cl:string
    :initform "")
   (model_path
    :reader model_path
    :initarg :model_path
    :type cl:string
    :initform "")
   (model_id
    :reader model_id
    :initarg :model_id
    :type cl:integer
    :initform 0)
   (stop_id
    :reader stop_id
    :initarg :stop_id
    :type cl:integer
    :initform 0))
)

(cl:defclass PresetStopLocation-request (<PresetStopLocation-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PresetStopLocation-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PresetStopLocation-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<PresetStopLocation-request> is deprecated: use dg_msgs-srv:PresetStopLocation-request instead.")))

(cl:ensure-generic-function 'lidar_topic-val :lambda-list '(m))
(cl:defmethod lidar_topic-val ((m <PresetStopLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:lidar_topic-val is deprecated.  Use dg_msgs-srv:lidar_topic instead.")
  (lidar_topic m))

(cl:ensure-generic-function 'model_path-val :lambda-list '(m))
(cl:defmethod model_path-val ((m <PresetStopLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:model_path-val is deprecated.  Use dg_msgs-srv:model_path instead.")
  (model_path m))

(cl:ensure-generic-function 'model_id-val :lambda-list '(m))
(cl:defmethod model_id-val ((m <PresetStopLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:model_id-val is deprecated.  Use dg_msgs-srv:model_id instead.")
  (model_id m))

(cl:ensure-generic-function 'stop_id-val :lambda-list '(m))
(cl:defmethod stop_id-val ((m <PresetStopLocation-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:stop_id-val is deprecated.  Use dg_msgs-srv:stop_id instead.")
  (stop_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PresetStopLocation-request>) ostream)
  "Serializes a message object of type '<PresetStopLocation-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lidar_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lidar_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_path))
  (cl:let* ((signed (cl:slot-value msg 'model_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stop_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PresetStopLocation-request>) istream)
  "Deserializes a message object of type '<PresetStopLocation-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lidar_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PresetStopLocation-request>)))
  "Returns string type for a service object of type '<PresetStopLocation-request>"
  "dg_msgs/PresetStopLocationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PresetStopLocation-request)))
  "Returns string type for a service object of type 'PresetStopLocation-request"
  "dg_msgs/PresetStopLocationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PresetStopLocation-request>)))
  "Returns md5sum for a message object of type '<PresetStopLocation-request>"
  "507416a4bd780b18fe799266d3f8145e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PresetStopLocation-request)))
  "Returns md5sum for a message object of type 'PresetStopLocation-request"
  "507416a4bd780b18fe799266d3f8145e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PresetStopLocation-request>)))
  "Returns full string definition for message of type '<PresetStopLocation-request>"
  (cl:format cl:nil "# 预置停车点位置，此时并不能获取准确的停车点位置，需离线处理后上传~%string lidar_topic      # 雷达标识~%string model_path       # 模型路径~%int32 model_id          # 模型ID~%int32 stop_id           # 停车点ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PresetStopLocation-request)))
  "Returns full string definition for message of type 'PresetStopLocation-request"
  (cl:format cl:nil "# 预置停车点位置，此时并不能获取准确的停车点位置，需离线处理后上传~%string lidar_topic      # 雷达标识~%string model_path       # 模型路径~%int32 model_id          # 模型ID~%int32 stop_id           # 停车点ID~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PresetStopLocation-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'lidar_topic))
     4 (cl:length (cl:slot-value msg 'model_path))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PresetStopLocation-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PresetStopLocation-request
    (cl:cons ':lidar_topic (lidar_topic msg))
    (cl:cons ':model_path (model_path msg))
    (cl:cons ':model_id (model_id msg))
    (cl:cons ':stop_id (stop_id msg))
))
;//! \htmlinclude PresetStopLocation-response.msg.html

(cl:defclass <PresetStopLocation-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass PresetStopLocation-response (<PresetStopLocation-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PresetStopLocation-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PresetStopLocation-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<PresetStopLocation-response> is deprecated: use dg_msgs-srv:PresetStopLocation-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PresetStopLocation-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PresetStopLocation-response>) ostream)
  "Serializes a message object of type '<PresetStopLocation-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PresetStopLocation-response>) istream)
  "Deserializes a message object of type '<PresetStopLocation-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PresetStopLocation-response>)))
  "Returns string type for a service object of type '<PresetStopLocation-response>"
  "dg_msgs/PresetStopLocationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PresetStopLocation-response)))
  "Returns string type for a service object of type 'PresetStopLocation-response"
  "dg_msgs/PresetStopLocationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PresetStopLocation-response>)))
  "Returns md5sum for a message object of type '<PresetStopLocation-response>"
  "507416a4bd780b18fe799266d3f8145e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PresetStopLocation-response)))
  "Returns md5sum for a message object of type 'PresetStopLocation-response"
  "507416a4bd780b18fe799266d3f8145e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PresetStopLocation-response>)))
  "Returns full string definition for message of type '<PresetStopLocation-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%# 离线调整输出结果~%# Pose robotPose~%# CropBox box~%# int32 model_id~%# int32 stop_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PresetStopLocation-response)))
  "Returns full string definition for message of type 'PresetStopLocation-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%# 离线调整输出结果~%# Pose robotPose~%# CropBox box~%# int32 model_id~%# int32 stop_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PresetStopLocation-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PresetStopLocation-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PresetStopLocation-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PresetStopLocation)))
  'PresetStopLocation-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PresetStopLocation)))
  'PresetStopLocation-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PresetStopLocation)))
  "Returns string type for a service object of type '<PresetStopLocation>"
  "dg_msgs/PresetStopLocation")