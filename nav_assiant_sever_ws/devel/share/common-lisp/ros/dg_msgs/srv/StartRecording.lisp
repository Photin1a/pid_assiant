; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude StartRecording-request.msg.html

(cl:defclass <StartRecording-request> (roslisp-msg-protocol:ros-message)
  ((number
    :reader number
    :initarg :number
    :type cl:string
    :initform ""))
)

(cl:defclass StartRecording-request (<StartRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<StartRecording-request> is deprecated: use dg_msgs-srv:StartRecording-request instead.")))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <StartRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:number-val is deprecated.  Use dg_msgs-srv:number instead.")
  (number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartRecording-request>) ostream)
  "Serializes a message object of type '<StartRecording-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartRecording-request>) istream)
  "Deserializes a message object of type '<StartRecording-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartRecording-request>)))
  "Returns string type for a service object of type '<StartRecording-request>"
  "dg_msgs/StartRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartRecording-request)))
  "Returns string type for a service object of type 'StartRecording-request"
  "dg_msgs/StartRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartRecording-request>)))
  "Returns md5sum for a message object of type '<StartRecording-request>"
  "8c9c8e5fc4e6966e27fb0faf053f29e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartRecording-request)))
  "Returns md5sum for a message object of type 'StartRecording-request"
  "8c9c8e5fc4e6966e27fb0faf053f29e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartRecording-request>)))
  "Returns full string definition for message of type '<StartRecording-request>"
  (cl:format cl:nil "string number       # 机械臂编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartRecording-request)))
  "Returns full string definition for message of type 'StartRecording-request"
  (cl:format cl:nil "string number       # 机械臂编号~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartRecording-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartRecording-request
    (cl:cons ':number (number msg))
))
;//! \htmlinclude StartRecording-response.msg.html

(cl:defclass <StartRecording-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0))
)

(cl:defclass StartRecording-response (<StartRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<StartRecording-response> is deprecated: use dg_msgs-srv:StartRecording-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StartRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartRecording-response>) ostream)
  "Serializes a message object of type '<StartRecording-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartRecording-response>) istream)
  "Deserializes a message object of type '<StartRecording-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartRecording-response>)))
  "Returns string type for a service object of type '<StartRecording-response>"
  "dg_msgs/StartRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartRecording-response)))
  "Returns string type for a service object of type 'StartRecording-response"
  "dg_msgs/StartRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartRecording-response>)))
  "Returns md5sum for a message object of type '<StartRecording-response>"
  "8c9c8e5fc4e6966e27fb0faf053f29e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartRecording-response)))
  "Returns md5sum for a message object of type 'StartRecording-response"
  "8c9c8e5fc4e6966e27fb0faf053f29e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartRecording-response>)))
  "Returns full string definition for message of type '<StartRecording-response>"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartRecording-response)))
  "Returns full string definition for message of type 'StartRecording-response"
  (cl:format cl:nil "int32 result        # 0: 成功  非0：失败~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartRecording-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartRecording-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartRecording)))
  'StartRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartRecording)))
  'StartRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartRecording)))
  "Returns string type for a service object of type '<StartRecording>"
  "dg_msgs/StartRecording")