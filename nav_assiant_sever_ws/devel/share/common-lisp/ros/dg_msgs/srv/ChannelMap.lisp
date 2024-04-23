; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude ChannelMap-request.msg.html

(cl:defclass <ChannelMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ChannelMap-request (<ChannelMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChannelMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChannelMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<ChannelMap-request> is deprecated: use dg_msgs-srv:ChannelMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChannelMap-request>) ostream)
  "Serializes a message object of type '<ChannelMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChannelMap-request>) istream)
  "Deserializes a message object of type '<ChannelMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChannelMap-request>)))
  "Returns string type for a service object of type '<ChannelMap-request>"
  "dg_msgs/ChannelMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChannelMap-request)))
  "Returns string type for a service object of type 'ChannelMap-request"
  "dg_msgs/ChannelMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChannelMap-request>)))
  "Returns md5sum for a message object of type '<ChannelMap-request>"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChannelMap-request)))
  "Returns md5sum for a message object of type 'ChannelMap-request"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChannelMap-request>)))
  "Returns full string definition for message of type '<ChannelMap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChannelMap-request)))
  "Returns full string definition for message of type 'ChannelMap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChannelMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChannelMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChannelMap-request
))
;//! \htmlinclude ChannelMap-response.msg.html

(cl:defclass <ChannelMap-response> (roslisp-msg-protocol:ros-message)
  ((paths
    :reader paths
    :initarg :paths
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ChannelMap-response (<ChannelMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChannelMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChannelMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<ChannelMap-response> is deprecated: use dg_msgs-srv:ChannelMap-response instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <ChannelMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:paths-val is deprecated.  Use dg_msgs-srv:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChannelMap-response>) ostream)
  "Serializes a message object of type '<ChannelMap-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'paths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'paths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChannelMap-response>) istream)
  "Deserializes a message object of type '<ChannelMap-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'paths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'paths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChannelMap-response>)))
  "Returns string type for a service object of type '<ChannelMap-response>"
  "dg_msgs/ChannelMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChannelMap-response)))
  "Returns string type for a service object of type 'ChannelMap-response"
  "dg_msgs/ChannelMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChannelMap-response>)))
  "Returns md5sum for a message object of type '<ChannelMap-response>"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChannelMap-response)))
  "Returns md5sum for a message object of type 'ChannelMap-response"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChannelMap-response>)))
  "Returns full string definition for message of type '<ChannelMap-response>"
  (cl:format cl:nil "string[] paths~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChannelMap-response)))
  "Returns full string definition for message of type 'ChannelMap-response"
  (cl:format cl:nil "string[] paths~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChannelMap-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChannelMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChannelMap-response
    (cl:cons ':paths (paths msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChannelMap)))
  'ChannelMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChannelMap)))
  'ChannelMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChannelMap)))
  "Returns string type for a service object of type '<ChannelMap>"
  "dg_msgs/ChannelMap")