; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude SafeDistanceSet-request.msg.html

(cl:defclass <SafeDistanceSet-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (dist
    :reader dist
    :initarg :dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass SafeDistanceSet-request (<SafeDistanceSet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafeDistanceSet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafeDistanceSet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SafeDistanceSet-request> is deprecated: use dg_msgs-srv:SafeDistanceSet-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <SafeDistanceSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'dist-val :lambda-list '(m))
(cl:defmethod dist-val ((m <SafeDistanceSet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:dist-val is deprecated.  Use dg_msgs-srv:dist instead.")
  (dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafeDistanceSet-request>) ostream)
  "Serializes a message object of type '<SafeDistanceSet-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafeDistanceSet-request>) istream)
  "Deserializes a message object of type '<SafeDistanceSet-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafeDistanceSet-request>)))
  "Returns string type for a service object of type '<SafeDistanceSet-request>"
  "dg_msgs/SafeDistanceSetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafeDistanceSet-request)))
  "Returns string type for a service object of type 'SafeDistanceSet-request"
  "dg_msgs/SafeDistanceSetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafeDistanceSet-request>)))
  "Returns md5sum for a message object of type '<SafeDistanceSet-request>"
  "9307e5f93fb0e682667be999235986b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafeDistanceSet-request)))
  "Returns md5sum for a message object of type 'SafeDistanceSet-request"
  "9307e5f93fb0e682667be999235986b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafeDistanceSet-request>)))
  "Returns full string definition for message of type '<SafeDistanceSet-request>"
  (cl:format cl:nil "string number       # 设备编码~%float32 dist       # 机械臂和碰撞物的安全距离，单位米~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafeDistanceSet-request)))
  "Returns full string definition for message of type 'SafeDistanceSet-request"
  (cl:format cl:nil "string number       # 设备编码~%float32 dist       # 机械臂和碰撞物的安全距离，单位米~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafeDistanceSet-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafeDistanceSet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SafeDistanceSet-request
    (cl:cons ':number (number msg))
    (cl:cons ':dist (dist msg))
))
;//! \htmlinclude SafeDistanceSet-response.msg.html

(cl:defclass <SafeDistanceSet-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass SafeDistanceSet-response (<SafeDistanceSet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafeDistanceSet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafeDistanceSet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<SafeDistanceSet-response> is deprecated: use dg_msgs-srv:SafeDistanceSet-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SafeDistanceSet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafeDistanceSet-response>) ostream)
  "Serializes a message object of type '<SafeDistanceSet-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafeDistanceSet-response>) istream)
  "Deserializes a message object of type '<SafeDistanceSet-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafeDistanceSet-response>)))
  "Returns string type for a service object of type '<SafeDistanceSet-response>"
  "dg_msgs/SafeDistanceSetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafeDistanceSet-response)))
  "Returns string type for a service object of type 'SafeDistanceSet-response"
  "dg_msgs/SafeDistanceSetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafeDistanceSet-response>)))
  "Returns md5sum for a message object of type '<SafeDistanceSet-response>"
  "9307e5f93fb0e682667be999235986b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafeDistanceSet-response)))
  "Returns md5sum for a message object of type 'SafeDistanceSet-response"
  "9307e5f93fb0e682667be999235986b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafeDistanceSet-response>)))
  "Returns full string definition for message of type '<SafeDistanceSet-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafeDistanceSet-response)))
  "Returns full string definition for message of type 'SafeDistanceSet-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafeDistanceSet-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafeDistanceSet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SafeDistanceSet-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SafeDistanceSet)))
  'SafeDistanceSet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SafeDistanceSet)))
  'SafeDistanceSet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafeDistanceSet)))
  "Returns string type for a service object of type '<SafeDistanceSet>"
  "dg_msgs/SafeDistanceSet")