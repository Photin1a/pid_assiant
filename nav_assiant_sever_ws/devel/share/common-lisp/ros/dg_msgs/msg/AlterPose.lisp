; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude AlterPose.msg.html

(cl:defclass <AlterPose> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (lift_data
    :reader lift_data
    :initarg :lift_data
    :type cl:float
    :initform 0.0))
)

(cl:defclass AlterPose (<AlterPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AlterPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AlterPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<AlterPose> is deprecated: use dg_msgs-msg:AlterPose instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AlterPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:id-val is deprecated.  Use dg_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AlterPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:pose-val is deprecated.  Use dg_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'lift_data-val :lambda-list '(m))
(cl:defmethod lift_data-val ((m <AlterPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:lift_data-val is deprecated.  Use dg_msgs-msg:lift_data instead.")
  (lift_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AlterPose>) ostream)
  "Serializes a message object of type '<AlterPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lift_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AlterPose>) istream)
  "Deserializes a message object of type '<AlterPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lift_data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AlterPose>)))
  "Returns string type for a message object of type '<AlterPose>"
  "dg_msgs/AlterPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AlterPose)))
  "Returns string type for a message object of type 'AlterPose"
  "dg_msgs/AlterPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AlterPose>)))
  "Returns md5sum for a message object of type '<AlterPose>"
  "4803ab626dec65d88283829bd49d8744")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AlterPose)))
  "Returns md5sum for a message object of type 'AlterPose"
  "4803ab626dec65d88283829bd49d8744")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AlterPose>)))
  "Returns full string definition for message of type '<AlterPose>"
  (cl:format cl:nil "string id~%geometry_msgs/Pose pose~%float64  lift_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AlterPose)))
  "Returns full string definition for message of type 'AlterPose"
  (cl:format cl:nil "string id~%geometry_msgs/Pose pose~%float64  lift_data~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AlterPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AlterPose>))
  "Converts a ROS message object to a list"
  (cl:list 'AlterPose
    (cl:cons ':id (id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':lift_data (lift_data msg))
))
