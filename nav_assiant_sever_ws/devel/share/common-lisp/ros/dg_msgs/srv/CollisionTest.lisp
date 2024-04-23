; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude CollisionTest-request.msg.html

(cl:defclass <CollisionTest-request> (roslisp-msg-protocol:ros-message)
  ((planning_group
    :reader planning_group
    :initarg :planning_group
    :type cl:string
    :initform ""))
)

(cl:defclass CollisionTest-request (<CollisionTest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionTest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionTest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CollisionTest-request> is deprecated: use dg_msgs-srv:CollisionTest-request instead.")))

(cl:ensure-generic-function 'planning_group-val :lambda-list '(m))
(cl:defmethod planning_group-val ((m <CollisionTest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:planning_group-val is deprecated.  Use dg_msgs-srv:planning_group instead.")
  (planning_group m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionTest-request>) ostream)
  "Serializes a message object of type '<CollisionTest-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionTest-request>) istream)
  "Deserializes a message object of type '<CollisionTest-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planning_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planning_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionTest-request>)))
  "Returns string type for a service object of type '<CollisionTest-request>"
  "dg_msgs/CollisionTestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionTest-request)))
  "Returns string type for a service object of type 'CollisionTest-request"
  "dg_msgs/CollisionTestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionTest-request>)))
  "Returns md5sum for a message object of type '<CollisionTest-request>"
  "2f299f8cf2ba5e251107e33972dff6f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionTest-request)))
  "Returns md5sum for a message object of type 'CollisionTest-request"
  "2f299f8cf2ba5e251107e33972dff6f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionTest-request>)))
  "Returns full string definition for message of type '<CollisionTest-request>"
  (cl:format cl:nil "string planning_group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionTest-request)))
  "Returns full string definition for message of type 'CollisionTest-request"
  (cl:format cl:nil "string planning_group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionTest-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planning_group))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionTest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionTest-request
    (cl:cons ':planning_group (planning_group msg))
))
;//! \htmlinclude CollisionTest-response.msg.html

(cl:defclass <CollisionTest-response> (roslisp-msg-protocol:ros-message)
  ((Is_collision
    :reader Is_collision
    :initarg :Is_collision
    :type cl:boolean
    :initform cl:nil)
   (collision_joint
    :reader collision_joint
    :initarg :collision_joint
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CollisionTest-response (<CollisionTest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionTest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionTest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<CollisionTest-response> is deprecated: use dg_msgs-srv:CollisionTest-response instead.")))

(cl:ensure-generic-function 'Is_collision-val :lambda-list '(m))
(cl:defmethod Is_collision-val ((m <CollisionTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:Is_collision-val is deprecated.  Use dg_msgs-srv:Is_collision instead.")
  (Is_collision m))

(cl:ensure-generic-function 'collision_joint-val :lambda-list '(m))
(cl:defmethod collision_joint-val ((m <CollisionTest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:collision_joint-val is deprecated.  Use dg_msgs-srv:collision_joint instead.")
  (collision_joint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionTest-response>) ostream)
  "Serializes a message object of type '<CollisionTest-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Is_collision) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'collision_joint))))
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
   (cl:slot-value msg 'collision_joint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionTest-response>) istream)
  "Deserializes a message object of type '<CollisionTest-response>"
    (cl:setf (cl:slot-value msg 'Is_collision) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'collision_joint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'collision_joint)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionTest-response>)))
  "Returns string type for a service object of type '<CollisionTest-response>"
  "dg_msgs/CollisionTestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionTest-response)))
  "Returns string type for a service object of type 'CollisionTest-response"
  "dg_msgs/CollisionTestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionTest-response>)))
  "Returns md5sum for a message object of type '<CollisionTest-response>"
  "2f299f8cf2ba5e251107e33972dff6f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionTest-response)))
  "Returns md5sum for a message object of type 'CollisionTest-response"
  "2f299f8cf2ba5e251107e33972dff6f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionTest-response>)))
  "Returns full string definition for message of type '<CollisionTest-response>"
  (cl:format cl:nil "bool Is_collision~%string[] collision_joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionTest-response)))
  "Returns full string definition for message of type 'CollisionTest-response"
  (cl:format cl:nil "bool Is_collision~%string[] collision_joint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionTest-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'collision_joint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionTest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionTest-response
    (cl:cons ':Is_collision (Is_collision msg))
    (cl:cons ':collision_joint (collision_joint msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CollisionTest)))
  'CollisionTest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CollisionTest)))
  'CollisionTest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionTest)))
  "Returns string type for a service object of type '<CollisionTest>"
  "dg_msgs/CollisionTest")