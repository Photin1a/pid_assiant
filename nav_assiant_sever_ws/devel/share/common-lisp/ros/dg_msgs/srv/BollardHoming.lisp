; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude BollardHoming-request.msg.html

(cl:defclass <BollardHoming-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (bollard_name
    :reader bollard_name
    :initarg :bollard_name
    :type cl:string
    :initform ""))
)

(cl:defclass BollardHoming-request (<BollardHoming-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BollardHoming-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BollardHoming-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<BollardHoming-request> is deprecated: use dg_msgs-srv:BollardHoming-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <BollardHoming-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'bollard_name-val :lambda-list '(m))
(cl:defmethod bollard_name-val ((m <BollardHoming-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:bollard_name-val is deprecated.  Use dg_msgs-srv:bollard_name instead.")
  (bollard_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BollardHoming-request>) ostream)
  "Serializes a message object of type '<BollardHoming-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bollard_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bollard_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BollardHoming-request>) istream)
  "Deserializes a message object of type '<BollardHoming-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bollard_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bollard_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BollardHoming-request>)))
  "Returns string type for a service object of type '<BollardHoming-request>"
  "dg_msgs/BollardHomingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardHoming-request)))
  "Returns string type for a service object of type 'BollardHoming-request"
  "dg_msgs/BollardHomingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BollardHoming-request>)))
  "Returns md5sum for a message object of type '<BollardHoming-request>"
  "6107cba57bb4df69eb49493ac2286ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BollardHoming-request)))
  "Returns md5sum for a message object of type 'BollardHoming-request"
  "6107cba57bb4df69eb49493ac2286ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BollardHoming-request>)))
  "Returns full string definition for message of type '<BollardHoming-request>"
  (cl:format cl:nil "# 升降柱回零 service name: /bollard_homing~%string number     # 升降柱编号~%string bollard_name     # 升降柱名(当前可以不填)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BollardHoming-request)))
  "Returns full string definition for message of type 'BollardHoming-request"
  (cl:format cl:nil "# 升降柱回零 service name: /bollard_homing~%string number     # 升降柱编号~%string bollard_name     # 升降柱名(当前可以不填)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BollardHoming-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4 (cl:length (cl:slot-value msg 'bollard_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BollardHoming-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BollardHoming-request
    (cl:cons ':number (number msg))
    (cl:cons ':bollard_name (bollard_name msg))
))
;//! \htmlinclude BollardHoming-response.msg.html

(cl:defclass <BollardHoming-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass BollardHoming-response (<BollardHoming-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BollardHoming-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BollardHoming-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<BollardHoming-response> is deprecated: use dg_msgs-srv:BollardHoming-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <BollardHoming-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'err_msg-val :lambda-list '(m))
(cl:defmethod err_msg-val ((m <BollardHoming-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:err_msg-val is deprecated.  Use dg_msgs-srv:err_msg instead.")
  (err_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BollardHoming-response>) ostream)
  "Serializes a message object of type '<BollardHoming-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BollardHoming-response>) istream)
  "Deserializes a message object of type '<BollardHoming-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BollardHoming-response>)))
  "Returns string type for a service object of type '<BollardHoming-response>"
  "dg_msgs/BollardHomingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardHoming-response)))
  "Returns string type for a service object of type 'BollardHoming-response"
  "dg_msgs/BollardHomingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BollardHoming-response>)))
  "Returns md5sum for a message object of type '<BollardHoming-response>"
  "6107cba57bb4df69eb49493ac2286ce0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BollardHoming-response)))
  "Returns md5sum for a message object of type 'BollardHoming-response"
  "6107cba57bb4df69eb49493ac2286ce0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BollardHoming-response>)))
  "Returns full string definition for message of type '<BollardHoming-response>"
  (cl:format cl:nil "int32 result                # 0: 成功；非0: 失败~%string err_msg              # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BollardHoming-response)))
  "Returns full string definition for message of type 'BollardHoming-response"
  (cl:format cl:nil "int32 result                # 0: 成功；非0: 失败~%string err_msg              # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BollardHoming-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'err_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BollardHoming-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BollardHoming-response
    (cl:cons ':result (result msg))
    (cl:cons ':err_msg (err_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BollardHoming)))
  'BollardHoming-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BollardHoming)))
  'BollardHoming-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BollardHoming)))
  "Returns string type for a service object of type '<BollardHoming>"
  "dg_msgs/BollardHoming")