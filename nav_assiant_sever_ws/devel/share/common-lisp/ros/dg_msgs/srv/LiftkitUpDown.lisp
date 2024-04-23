; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude LiftkitUpDown-request.msg.html

(cl:defclass <LiftkitUpDown-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform "")
   (operation
    :reader operation
    :initarg :operation
    :type cl:integer
    :initform 0))
)

(cl:defclass LiftkitUpDown-request (<LiftkitUpDown-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiftkitUpDown-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiftkitUpDown-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LiftkitUpDown-request> is deprecated: use dg_msgs-srv:LiftkitUpDown-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <LiftkitUpDown-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))

(cl:ensure-generic-function 'operation-val :lambda-list '(m))
(cl:defmethod operation-val ((m <LiftkitUpDown-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:operation-val is deprecated.  Use dg_msgs-srv:operation instead.")
  (operation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiftkitUpDown-request>) ostream)
  "Serializes a message object of type '<LiftkitUpDown-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
  (cl:let* ((signed (cl:slot-value msg 'operation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiftkitUpDown-request>) istream)
  "Deserializes a message object of type '<LiftkitUpDown-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiftkitUpDown-request>)))
  "Returns string type for a service object of type '<LiftkitUpDown-request>"
  "dg_msgs/LiftkitUpDownRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftkitUpDown-request)))
  "Returns string type for a service object of type 'LiftkitUpDown-request"
  "dg_msgs/LiftkitUpDownRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiftkitUpDown-request>)))
  "Returns md5sum for a message object of type '<LiftkitUpDown-request>"
  "b6726b2e06edf8d1dc8c1c47a838612e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiftkitUpDown-request)))
  "Returns md5sum for a message object of type 'LiftkitUpDown-request"
  "b6726b2e06edf8d1dc8c1c47a838612e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiftkitUpDown-request>)))
  "Returns full string definition for message of type '<LiftkitUpDown-request>"
  (cl:format cl:nil "string number       # 设备编码~%int32 operation     # 1：上升； 2：下降； 3：停止~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiftkitUpDown-request)))
  "Returns full string definition for message of type 'LiftkitUpDown-request"
  (cl:format cl:nil "string number       # 设备编码~%int32 operation     # 1：上升； 2：下降； 3：停止~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiftkitUpDown-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiftkitUpDown-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LiftkitUpDown-request
    (cl:cons ':number (number msg))
    (cl:cons ':operation (operation msg))
))
;//! \htmlinclude LiftkitUpDown-response.msg.html

(cl:defclass <LiftkitUpDown-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass LiftkitUpDown-response (<LiftkitUpDown-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiftkitUpDown-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiftkitUpDown-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LiftkitUpDown-response> is deprecated: use dg_msgs-srv:LiftkitUpDown-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LiftkitUpDown-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <LiftkitUpDown-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:height-val is deprecated.  Use dg_msgs-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiftkitUpDown-response>) ostream)
  "Serializes a message object of type '<LiftkitUpDown-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiftkitUpDown-response>) istream)
  "Deserializes a message object of type '<LiftkitUpDown-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiftkitUpDown-response>)))
  "Returns string type for a service object of type '<LiftkitUpDown-response>"
  "dg_msgs/LiftkitUpDownResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftkitUpDown-response)))
  "Returns string type for a service object of type 'LiftkitUpDown-response"
  "dg_msgs/LiftkitUpDownResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiftkitUpDown-response>)))
  "Returns md5sum for a message object of type '<LiftkitUpDown-response>"
  "b6726b2e06edf8d1dc8c1c47a838612e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiftkitUpDown-response)))
  "Returns md5sum for a message object of type 'LiftkitUpDown-response"
  "b6726b2e06edf8d1dc8c1c47a838612e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiftkitUpDown-response>)))
  "Returns full string definition for message of type '<LiftkitUpDown-response>"
  (cl:format cl:nil "int32 result~%float32 height          # 升降柱当前的高度~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiftkitUpDown-response)))
  "Returns full string definition for message of type 'LiftkitUpDown-response"
  (cl:format cl:nil "int32 result~%float32 height          # 升降柱当前的高度~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiftkitUpDown-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiftkitUpDown-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LiftkitUpDown-response
    (cl:cons ':result (result msg))
    (cl:cons ':height (height msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LiftkitUpDown)))
  'LiftkitUpDown-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LiftkitUpDown)))
  'LiftkitUpDown-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftkitUpDown)))
  "Returns string type for a service object of type '<LiftkitUpDown>"
  "dg_msgs/LiftkitUpDown")