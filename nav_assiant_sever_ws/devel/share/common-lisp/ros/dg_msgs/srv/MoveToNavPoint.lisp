; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude MoveToNavPoint-request.msg.html

(cl:defclass <MoveToNavPoint-request> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (check_state
    :reader check_state
    :initarg :check_state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveToNavPoint-request (<MoveToNavPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToNavPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToNavPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<MoveToNavPoint-request> is deprecated: use dg_msgs-srv:MoveToNavPoint-request instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <MoveToNavPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:distance-val is deprecated.  Use dg_msgs-srv:distance instead.")
  (distance m))

(cl:ensure-generic-function 'check_state-val :lambda-list '(m))
(cl:defmethod check_state-val ((m <MoveToNavPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:check_state-val is deprecated.  Use dg_msgs-srv:check_state instead.")
  (check_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToNavPoint-request>) ostream)
  "Serializes a message object of type '<MoveToNavPoint-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'check_state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToNavPoint-request>) istream)
  "Deserializes a message object of type '<MoveToNavPoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'check_state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToNavPoint-request>)))
  "Returns string type for a service object of type '<MoveToNavPoint-request>"
  "dg_msgs/MoveToNavPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToNavPoint-request)))
  "Returns string type for a service object of type 'MoveToNavPoint-request"
  "dg_msgs/MoveToNavPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToNavPoint-request>)))
  "Returns md5sum for a message object of type '<MoveToNavPoint-request>"
  "6cf0632649534b6bf5571e33bbfdeb01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToNavPoint-request)))
  "Returns md5sum for a message object of type 'MoveToNavPoint-request"
  "6cf0632649534b6bf5571e33bbfdeb01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToNavPoint-request>)))
  "Returns full string definition for message of type '<MoveToNavPoint-request>"
  (cl:format cl:nil "float32 distance            # 站点导航模式下移动距离，> 0 向前，< 0 向后~%bool check_state            # 是否要求机械臂必须要在home点：true底盘运动前机械臂必须要在home位，否则直接返回运动失败；false则不对机械臂进行检查，完全信任人工操作~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToNavPoint-request)))
  "Returns full string definition for message of type 'MoveToNavPoint-request"
  (cl:format cl:nil "float32 distance            # 站点导航模式下移动距离，> 0 向前，< 0 向后~%bool check_state            # 是否要求机械臂必须要在home点：true底盘运动前机械臂必须要在home位，否则直接返回运动失败；false则不对机械臂进行检查，完全信任人工操作~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToNavPoint-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToNavPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToNavPoint-request
    (cl:cons ':distance (distance msg))
    (cl:cons ':check_state (check_state msg))
))
;//! \htmlinclude MoveToNavPoint-response.msg.html

(cl:defclass <MoveToNavPoint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (error_msgs
    :reader error_msgs
    :initarg :error_msgs
    :type cl:string
    :initform ""))
)

(cl:defclass MoveToNavPoint-response (<MoveToNavPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToNavPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToNavPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<MoveToNavPoint-response> is deprecated: use dg_msgs-srv:MoveToNavPoint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MoveToNavPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:result-val is deprecated.  Use dg_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'error_msgs-val :lambda-list '(m))
(cl:defmethod error_msgs-val ((m <MoveToNavPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:error_msgs-val is deprecated.  Use dg_msgs-srv:error_msgs instead.")
  (error_msgs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToNavPoint-response>) ostream)
  "Serializes a message object of type '<MoveToNavPoint-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_msgs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_msgs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToNavPoint-response>) istream)
  "Deserializes a message object of type '<MoveToNavPoint-response>"
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
      (cl:setf (cl:slot-value msg 'error_msgs) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_msgs) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToNavPoint-response>)))
  "Returns string type for a service object of type '<MoveToNavPoint-response>"
  "dg_msgs/MoveToNavPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToNavPoint-response)))
  "Returns string type for a service object of type 'MoveToNavPoint-response"
  "dg_msgs/MoveToNavPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToNavPoint-response>)))
  "Returns md5sum for a message object of type '<MoveToNavPoint-response>"
  "6cf0632649534b6bf5571e33bbfdeb01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToNavPoint-response)))
  "Returns md5sum for a message object of type 'MoveToNavPoint-response"
  "6cf0632649534b6bf5571e33bbfdeb01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToNavPoint-response>)))
  "Returns full string definition for message of type '<MoveToNavPoint-response>"
  (cl:format cl:nil "int32 result                # 0: 成功  非0：失败~%string error_msgs           # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToNavPoint-response)))
  "Returns full string definition for message of type 'MoveToNavPoint-response"
  (cl:format cl:nil "int32 result                # 0: 成功  非0：失败~%string error_msgs           # 错误信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToNavPoint-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'error_msgs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToNavPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToNavPoint-response
    (cl:cons ':result (result msg))
    (cl:cons ':error_msgs (error_msgs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToNavPoint)))
  'MoveToNavPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToNavPoint)))
  'MoveToNavPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToNavPoint)))
  "Returns string type for a service object of type '<MoveToNavPoint>"
  "dg_msgs/MoveToNavPoint")