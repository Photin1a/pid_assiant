; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude LoadJson-request.msg.html

(cl:defclass <LoadJson-request> (roslisp-msg-protocol:ros-message)
  ((file_path
    :reader file_path
    :initarg :file_path
    :type cl:string
    :initform ""))
)

(cl:defclass LoadJson-request (<LoadJson-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadJson-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadJson-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LoadJson-request> is deprecated: use dg_msgs-srv:LoadJson-request instead.")))

(cl:ensure-generic-function 'file_path-val :lambda-list '(m))
(cl:defmethod file_path-val ((m <LoadJson-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:file_path-val is deprecated.  Use dg_msgs-srv:file_path instead.")
  (file_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadJson-request>) ostream)
  "Serializes a message object of type '<LoadJson-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadJson-request>) istream)
  "Deserializes a message object of type '<LoadJson-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadJson-request>)))
  "Returns string type for a service object of type '<LoadJson-request>"
  "dg_msgs/LoadJsonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadJson-request)))
  "Returns string type for a service object of type 'LoadJson-request"
  "dg_msgs/LoadJsonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadJson-request>)))
  "Returns md5sum for a message object of type '<LoadJson-request>"
  "884e9f1f2a64f8cbc72d72730cb5a68c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadJson-request)))
  "Returns md5sum for a message object of type 'LoadJson-request"
  "884e9f1f2a64f8cbc72d72730cb5a68c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadJson-request>)))
  "Returns full string definition for message of type '<LoadJson-request>"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadJson-request)))
  "Returns full string definition for message of type 'LoadJson-request"
  (cl:format cl:nil "string file_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadJson-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadJson-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadJson-request
    (cl:cons ':file_path (file_path msg))
))
;//! \htmlinclude LoadJson-response.msg.html

(cl:defclass <LoadJson-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LoadJson-response (<LoadJson-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadJson-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadJson-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<LoadJson-response> is deprecated: use dg_msgs-srv:LoadJson-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <LoadJson-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:ret-val is deprecated.  Use dg_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadJson-response>) ostream)
  "Serializes a message object of type '<LoadJson-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadJson-response>) istream)
  "Deserializes a message object of type '<LoadJson-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadJson-response>)))
  "Returns string type for a service object of type '<LoadJson-response>"
  "dg_msgs/LoadJsonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadJson-response)))
  "Returns string type for a service object of type 'LoadJson-response"
  "dg_msgs/LoadJsonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadJson-response>)))
  "Returns md5sum for a message object of type '<LoadJson-response>"
  "884e9f1f2a64f8cbc72d72730cb5a68c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadJson-response)))
  "Returns md5sum for a message object of type 'LoadJson-response"
  "884e9f1f2a64f8cbc72d72730cb5a68c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadJson-response>)))
  "Returns full string definition for message of type '<LoadJson-response>"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadJson-response)))
  "Returns full string definition for message of type 'LoadJson-response"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadJson-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadJson-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadJson-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadJson)))
  'LoadJson-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadJson)))
  'LoadJson-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadJson)))
  "Returns string type for a service object of type '<LoadJson>"
  "dg_msgs/LoadJson")