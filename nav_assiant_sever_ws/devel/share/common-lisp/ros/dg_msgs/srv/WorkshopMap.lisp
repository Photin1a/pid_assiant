; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude WorkshopMap-request.msg.html

(cl:defclass <WorkshopMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WorkshopMap-request (<WorkshopMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkshopMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkshopMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<WorkshopMap-request> is deprecated: use dg_msgs-srv:WorkshopMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkshopMap-request>) ostream)
  "Serializes a message object of type '<WorkshopMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkshopMap-request>) istream)
  "Deserializes a message object of type '<WorkshopMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkshopMap-request>)))
  "Returns string type for a service object of type '<WorkshopMap-request>"
  "dg_msgs/WorkshopMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkshopMap-request)))
  "Returns string type for a service object of type 'WorkshopMap-request"
  "dg_msgs/WorkshopMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkshopMap-request>)))
  "Returns md5sum for a message object of type '<WorkshopMap-request>"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkshopMap-request)))
  "Returns md5sum for a message object of type 'WorkshopMap-request"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkshopMap-request>)))
  "Returns full string definition for message of type '<WorkshopMap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkshopMap-request)))
  "Returns full string definition for message of type 'WorkshopMap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkshopMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkshopMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkshopMap-request
))
;//! \htmlinclude WorkshopMap-response.msg.html

(cl:defclass <WorkshopMap-response> (roslisp-msg-protocol:ros-message)
  ((paths
    :reader paths
    :initarg :paths
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass WorkshopMap-response (<WorkshopMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkshopMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkshopMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<WorkshopMap-response> is deprecated: use dg_msgs-srv:WorkshopMap-response instead.")))

(cl:ensure-generic-function 'paths-val :lambda-list '(m))
(cl:defmethod paths-val ((m <WorkshopMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:paths-val is deprecated.  Use dg_msgs-srv:paths instead.")
  (paths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkshopMap-response>) ostream)
  "Serializes a message object of type '<WorkshopMap-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkshopMap-response>) istream)
  "Deserializes a message object of type '<WorkshopMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkshopMap-response>)))
  "Returns string type for a service object of type '<WorkshopMap-response>"
  "dg_msgs/WorkshopMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkshopMap-response)))
  "Returns string type for a service object of type 'WorkshopMap-response"
  "dg_msgs/WorkshopMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkshopMap-response>)))
  "Returns md5sum for a message object of type '<WorkshopMap-response>"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkshopMap-response)))
  "Returns md5sum for a message object of type 'WorkshopMap-response"
  "6492c325ba20fade9dfa2542bc679f51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkshopMap-response>)))
  "Returns full string definition for message of type '<WorkshopMap-response>"
  (cl:format cl:nil "string[] paths~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkshopMap-response)))
  "Returns full string definition for message of type 'WorkshopMap-response"
  (cl:format cl:nil "string[] paths~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkshopMap-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'paths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkshopMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkshopMap-response
    (cl:cons ':paths (paths msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WorkshopMap)))
  'WorkshopMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WorkshopMap)))
  'WorkshopMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkshopMap)))
  "Returns string type for a service object of type '<WorkshopMap>"
  "dg_msgs/WorkshopMap")