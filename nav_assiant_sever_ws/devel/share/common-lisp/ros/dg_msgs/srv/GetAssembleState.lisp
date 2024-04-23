; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude GetAssembleState-request.msg.html

(cl:defclass <GetAssembleState-request> (roslisp-msg-protocol:ros-message)
  ((assemble_index
    :reader assemble_index
    :initarg :assemble_index
    :type cl:string
    :initform ""))
)

(cl:defclass GetAssembleState-request (<GetAssembleState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAssembleState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAssembleState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetAssembleState-request> is deprecated: use dg_msgs-srv:GetAssembleState-request instead.")))

(cl:ensure-generic-function 'assemble_index-val :lambda-list '(m))
(cl:defmethod assemble_index-val ((m <GetAssembleState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:assemble_index-val is deprecated.  Use dg_msgs-srv:assemble_index instead.")
  (assemble_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAssembleState-request>) ostream)
  "Serializes a message object of type '<GetAssembleState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'assemble_index))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'assemble_index))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAssembleState-request>) istream)
  "Deserializes a message object of type '<GetAssembleState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'assemble_index) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'assemble_index) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAssembleState-request>)))
  "Returns string type for a service object of type '<GetAssembleState-request>"
  "dg_msgs/GetAssembleStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAssembleState-request)))
  "Returns string type for a service object of type 'GetAssembleState-request"
  "dg_msgs/GetAssembleStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAssembleState-request>)))
  "Returns md5sum for a message object of type '<GetAssembleState-request>"
  "f047080dfaa590aae4f29539db7e0f2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAssembleState-request)))
  "Returns md5sum for a message object of type 'GetAssembleState-request"
  "f047080dfaa590aae4f29539db7e0f2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAssembleState-request>)))
  "Returns full string definition for message of type '<GetAssembleState-request>"
  (cl:format cl:nil "# 获取上装体状态请求~%string assemble_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAssembleState-request)))
  "Returns full string definition for message of type 'GetAssembleState-request"
  (cl:format cl:nil "# 获取上装体状态请求~%string assemble_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAssembleState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'assemble_index))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAssembleState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAssembleState-request
    (cl:cons ':assemble_index (assemble_index msg))
))
;//! \htmlinclude GetAssembleState-response.msg.html

(cl:defclass <GetAssembleState-response> (roslisp-msg-protocol:ros-message)
  ((state_
    :reader state_
    :initarg :state_
    :type dg_msgs-msg:AssembleState
    :initform (cl:make-instance 'dg_msgs-msg:AssembleState)))
)

(cl:defclass GetAssembleState-response (<GetAssembleState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAssembleState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAssembleState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<GetAssembleState-response> is deprecated: use dg_msgs-srv:GetAssembleState-response instead.")))

(cl:ensure-generic-function 'state_-val :lambda-list '(m))
(cl:defmethod state_-val ((m <GetAssembleState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state_-val is deprecated.  Use dg_msgs-srv:state_ instead.")
  (state_ m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAssembleState-response>) ostream)
  "Serializes a message object of type '<GetAssembleState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAssembleState-response>) istream)
  "Deserializes a message object of type '<GetAssembleState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAssembleState-response>)))
  "Returns string type for a service object of type '<GetAssembleState-response>"
  "dg_msgs/GetAssembleStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAssembleState-response)))
  "Returns string type for a service object of type 'GetAssembleState-response"
  "dg_msgs/GetAssembleStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAssembleState-response>)))
  "Returns md5sum for a message object of type '<GetAssembleState-response>"
  "f047080dfaa590aae4f29539db7e0f2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAssembleState-response)))
  "Returns md5sum for a message object of type 'GetAssembleState-response"
  "f047080dfaa590aae4f29539db7e0f2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAssembleState-response>)))
  "Returns full string definition for message of type '<GetAssembleState-response>"
  (cl:format cl:nil "AssembleState state_~%~%================================================================================~%MSG: dg_msgs/AssembleState~%# 上装箱体状态信息~%bool is_emergency           # 是否是急停~%bool is_auto                # 是否是自动档~%bool is_rescue              # 是否是救援模式~%bool is_reset               # 是否是复位~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAssembleState-response)))
  "Returns full string definition for message of type 'GetAssembleState-response"
  (cl:format cl:nil "AssembleState state_~%~%================================================================================~%MSG: dg_msgs/AssembleState~%# 上装箱体状态信息~%bool is_emergency           # 是否是急停~%bool is_auto                # 是否是自动档~%bool is_rescue              # 是否是救援模式~%bool is_reset               # 是否是复位~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAssembleState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAssembleState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAssembleState-response
    (cl:cons ':state_ (state_ msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAssembleState)))
  'GetAssembleState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAssembleState)))
  'GetAssembleState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAssembleState)))
  "Returns string type for a service object of type '<GetAssembleState>"
  "dg_msgs/GetAssembleState")