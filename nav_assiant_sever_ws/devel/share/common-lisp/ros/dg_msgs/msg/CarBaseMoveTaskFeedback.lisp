; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude CarBaseMoveTaskFeedback.msg.html

(cl:defclass <CarBaseMoveTaskFeedback> (roslisp-msg-protocol:ros-message)
  ((remaining_dis
    :reader remaining_dis
    :initarg :remaining_dis
    :type cl:float
    :initform 0.0))
)

(cl:defclass CarBaseMoveTaskFeedback (<CarBaseMoveTaskFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarBaseMoveTaskFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarBaseMoveTaskFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<CarBaseMoveTaskFeedback> is deprecated: use dg_msgs-msg:CarBaseMoveTaskFeedback instead.")))

(cl:ensure-generic-function 'remaining_dis-val :lambda-list '(m))
(cl:defmethod remaining_dis-val ((m <CarBaseMoveTaskFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:remaining_dis-val is deprecated.  Use dg_msgs-msg:remaining_dis instead.")
  (remaining_dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarBaseMoveTaskFeedback>) ostream)
  "Serializes a message object of type '<CarBaseMoveTaskFeedback>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remaining_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarBaseMoveTaskFeedback>) istream)
  "Deserializes a message object of type '<CarBaseMoveTaskFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_dis) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarBaseMoveTaskFeedback>)))
  "Returns string type for a message object of type '<CarBaseMoveTaskFeedback>"
  "dg_msgs/CarBaseMoveTaskFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarBaseMoveTaskFeedback)))
  "Returns string type for a message object of type 'CarBaseMoveTaskFeedback"
  "dg_msgs/CarBaseMoveTaskFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarBaseMoveTaskFeedback>)))
  "Returns md5sum for a message object of type '<CarBaseMoveTaskFeedback>"
  "79fae28ecfe7613af2baf70b3042f356")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarBaseMoveTaskFeedback)))
  "Returns md5sum for a message object of type 'CarBaseMoveTaskFeedback"
  "79fae28ecfe7613af2baf70b3042f356")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarBaseMoveTaskFeedback>)))
  "Returns full string definition for message of type '<CarBaseMoveTaskFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 remaining_dis                       # 剩余距离  feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarBaseMoveTaskFeedback)))
  "Returns full string definition for message of type 'CarBaseMoveTaskFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%float32 remaining_dis                       # 剩余距离  feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarBaseMoveTaskFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarBaseMoveTaskFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'CarBaseMoveTaskFeedback
    (cl:cons ':remaining_dis (remaining_dis msg))
))
