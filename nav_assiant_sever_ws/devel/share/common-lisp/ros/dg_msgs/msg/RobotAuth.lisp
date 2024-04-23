; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude RobotAuth.msg.html

(cl:defclass <RobotAuth> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (token
    :reader token
    :initarg :token
    :type cl:string
    :initform ""))
)

(cl:defclass RobotAuth (<RobotAuth>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotAuth>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotAuth)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<RobotAuth> is deprecated: use dg_msgs-msg:RobotAuth instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RobotAuth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:robot_id-val is deprecated.  Use dg_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'token-val :lambda-list '(m))
(cl:defmethod token-val ((m <RobotAuth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:token-val is deprecated.  Use dg_msgs-msg:token instead.")
  (token m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotAuth>) ostream)
  "Serializes a message object of type '<RobotAuth>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'token))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotAuth>) istream)
  "Deserializes a message object of type '<RobotAuth>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'token) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'token) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotAuth>)))
  "Returns string type for a message object of type '<RobotAuth>"
  "dg_msgs/RobotAuth")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotAuth)))
  "Returns string type for a message object of type 'RobotAuth"
  "dg_msgs/RobotAuth")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotAuth>)))
  "Returns md5sum for a message object of type '<RobotAuth>"
  "b9d0ad1c6a095a78c7397487b7034aa9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotAuth)))
  "Returns md5sum for a message object of type 'RobotAuth"
  "b9d0ad1c6a095a78c7397487b7034aa9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotAuth>)))
  "Returns full string definition for message of type '<RobotAuth>"
  (cl:format cl:nil "string robot_id~%string token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotAuth)))
  "Returns full string definition for message of type 'RobotAuth"
  (cl:format cl:nil "string robot_id~%string token~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotAuth>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'token))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotAuth>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotAuth
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':token (token msg))
))
