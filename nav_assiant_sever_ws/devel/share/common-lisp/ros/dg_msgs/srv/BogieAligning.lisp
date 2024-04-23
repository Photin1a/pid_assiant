; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude BogieAligning-request.msg.html

(cl:defclass <BogieAligning-request> (roslisp-msg-protocol:ros-message)
  ((model_path
    :reader model_path
    :initarg :model_path
    :type cl:string
    :initform "")
   (lidar_topic
    :reader lidar_topic
    :initarg :lidar_topic
    :type cl:string
    :initform ""))
)

(cl:defclass BogieAligning-request (<BogieAligning-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BogieAligning-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BogieAligning-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<BogieAligning-request> is deprecated: use dg_msgs-srv:BogieAligning-request instead.")))

(cl:ensure-generic-function 'model_path-val :lambda-list '(m))
(cl:defmethod model_path-val ((m <BogieAligning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:model_path-val is deprecated.  Use dg_msgs-srv:model_path instead.")
  (model_path m))

(cl:ensure-generic-function 'lidar_topic-val :lambda-list '(m))
(cl:defmethod lidar_topic-val ((m <BogieAligning-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:lidar_topic-val is deprecated.  Use dg_msgs-srv:lidar_topic instead.")
  (lidar_topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BogieAligning-request>) ostream)
  "Serializes a message object of type '<BogieAligning-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lidar_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lidar_topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BogieAligning-request>) istream)
  "Deserializes a message object of type '<BogieAligning-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lidar_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lidar_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BogieAligning-request>)))
  "Returns string type for a service object of type '<BogieAligning-request>"
  "dg_msgs/BogieAligningRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BogieAligning-request)))
  "Returns string type for a service object of type 'BogieAligning-request"
  "dg_msgs/BogieAligningRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BogieAligning-request>)))
  "Returns md5sum for a message object of type '<BogieAligning-request>"
  "7a688dfc87e588c1b04a6359014918f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BogieAligning-request)))
  "Returns md5sum for a message object of type 'BogieAligning-request"
  "7a688dfc87e588c1b04a6359014918f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BogieAligning-request>)))
  "Returns full string definition for message of type '<BogieAligning-request>"
  (cl:format cl:nil "string model_path~%string lidar_topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BogieAligning-request)))
  "Returns full string definition for message of type 'BogieAligning-request"
  (cl:format cl:nil "string model_path~%string lidar_topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BogieAligning-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'model_path))
     4 (cl:length (cl:slot-value msg 'lidar_topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BogieAligning-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BogieAligning-request
    (cl:cons ':model_path (model_path msg))
    (cl:cons ':lidar_topic (lidar_topic msg))
))
;//! \htmlinclude BogieAligning-response.msg.html

(cl:defclass <BogieAligning-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass BogieAligning-response (<BogieAligning-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BogieAligning-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BogieAligning-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<BogieAligning-response> is deprecated: use dg_msgs-srv:BogieAligning-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <BogieAligning-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BogieAligning-response>) ostream)
  "Serializes a message object of type '<BogieAligning-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BogieAligning-response>) istream)
  "Deserializes a message object of type '<BogieAligning-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BogieAligning-response>)))
  "Returns string type for a service object of type '<BogieAligning-response>"
  "dg_msgs/BogieAligningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BogieAligning-response)))
  "Returns string type for a service object of type 'BogieAligning-response"
  "dg_msgs/BogieAligningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BogieAligning-response>)))
  "Returns md5sum for a message object of type '<BogieAligning-response>"
  "7a688dfc87e588c1b04a6359014918f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BogieAligning-response)))
  "Returns md5sum for a message object of type 'BogieAligning-response"
  "7a688dfc87e588c1b04a6359014918f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BogieAligning-response>)))
  "Returns full string definition for message of type '<BogieAligning-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BogieAligning-response)))
  "Returns full string definition for message of type 'BogieAligning-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BogieAligning-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BogieAligning-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BogieAligning-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BogieAligning)))
  'BogieAligning-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BogieAligning)))
  'BogieAligning-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BogieAligning)))
  "Returns string type for a service object of type '<BogieAligning>"
  "dg_msgs/BogieAligning")