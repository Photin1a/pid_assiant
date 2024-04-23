; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude TrainTypeMap-request.msg.html

(cl:defclass <TrainTypeMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrainTypeMap-request (<TrainTypeMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainTypeMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainTypeMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TrainTypeMap-request> is deprecated: use dg_msgs-srv:TrainTypeMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainTypeMap-request>) ostream)
  "Serializes a message object of type '<TrainTypeMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainTypeMap-request>) istream)
  "Deserializes a message object of type '<TrainTypeMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainTypeMap-request>)))
  "Returns string type for a service object of type '<TrainTypeMap-request>"
  "dg_msgs/TrainTypeMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainTypeMap-request)))
  "Returns string type for a service object of type 'TrainTypeMap-request"
  "dg_msgs/TrainTypeMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainTypeMap-request>)))
  "Returns md5sum for a message object of type '<TrainTypeMap-request>"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainTypeMap-request)))
  "Returns md5sum for a message object of type 'TrainTypeMap-request"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainTypeMap-request>)))
  "Returns full string definition for message of type '<TrainTypeMap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainTypeMap-request)))
  "Returns full string definition for message of type 'TrainTypeMap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainTypeMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainTypeMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainTypeMap-request
))
;//! \htmlinclude TrainTypeMap-response.msg.html

(cl:defclass <TrainTypeMap-response> (roslisp-msg-protocol:ros-message)
  ((paths
    :reader paths
    :initarg :paths
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass TrainTypeMap-response (<TrainTypeMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainTypeMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainTypeMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<TrainTypeMap-response> is deprecated: use dg_msgs-srv:TrainTypeMap-response instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <TrainTypeMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:paths-val is deprecated.  Use dg_msgs-srv:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainTypeMap-response>) ostream)
  "Serializes a message object of type '<TrainTypeMap-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainTypeMap-response>) istream)
  "Deserializes a message object of type '<TrainTypeMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainTypeMap-response>)))
  "Returns string type for a service object of type '<TrainTypeMap-response>"
  "dg_msgs/TrainTypeMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainTypeMap-response)))
  "Returns string type for a service object of type 'TrainTypeMap-response"
  "dg_msgs/TrainTypeMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainTypeMap-response>)))
  "Returns md5sum for a message object of type '<TrainTypeMap-response>"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainTypeMap-response)))
  "Returns md5sum for a message object of type 'TrainTypeMap-response"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainTypeMap-response>)))
  "Returns full string definition for message of type '<TrainTypeMap-response>"
  (cl:format cl:nil "string[] paths~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainTypeMap-response)))
  "Returns full string definition for message of type 'TrainTypeMap-response"
  (cl:format cl:nil "string[] paths~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainTypeMap-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainTypeMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainTypeMap-response
    (cl:cons ':paths (paths msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrainTypeMap)))
  'TrainTypeMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrainTypeMap)))
  'TrainTypeMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainTypeMap)))
  "Returns string type for a service object of type '<TrainTypeMap>"
  "dg_msgs/TrainTypeMap")