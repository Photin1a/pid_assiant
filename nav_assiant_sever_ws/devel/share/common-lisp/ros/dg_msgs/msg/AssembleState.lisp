; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude AssembleState.msg.html

(cl:defclass <AssembleState> (roslisp-msg-protocol:ros-message)
  ((is_emergency
    :reader is_emergency
    :initarg :is_emergency
    :type cl:boolean
    :initform cl:nil)
   (is_auto
    :reader is_auto
    :initarg :is_auto
    :type cl:boolean
    :initform cl:nil)
   (is_rescue
    :reader is_rescue
    :initarg :is_rescue
    :type cl:boolean
    :initform cl:nil)
   (is_reset
    :reader is_reset
    :initarg :is_reset
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AssembleState (<AssembleState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssembleState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssembleState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<AssembleState> is deprecated: use dg_msgs-msg:AssembleState instead.")))

(cl:ensure-generic-function 'is_emergency-val :lambda-list '(m))
(cl:defmethod is_emergency-val ((m <AssembleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_emergency-val is deprecated.  Use dg_msgs-msg:is_emergency instead.")
  (is_emergency m))

(cl:ensure-generic-function 'is_auto-val :lambda-list '(m))
(cl:defmethod is_auto-val ((m <AssembleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_auto-val is deprecated.  Use dg_msgs-msg:is_auto instead.")
  (is_auto m))

(cl:ensure-generic-function 'is_rescue-val :lambda-list '(m))
(cl:defmethod is_rescue-val ((m <AssembleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_rescue-val is deprecated.  Use dg_msgs-msg:is_rescue instead.")
  (is_rescue m))

(cl:ensure-generic-function 'is_reset-val :lambda-list '(m))
(cl:defmethod is_reset-val ((m <AssembleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:is_reset-val is deprecated.  Use dg_msgs-msg:is_reset instead.")
  (is_reset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssembleState>) ostream)
  "Serializes a message object of type '<AssembleState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_emergency) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_auto) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_rescue) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_reset) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssembleState>) istream)
  "Deserializes a message object of type '<AssembleState>"
    (cl:setf (cl:slot-value msg 'is_emergency) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_auto) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_rescue) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_reset) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssembleState>)))
  "Returns string type for a message object of type '<AssembleState>"
  "dg_msgs/AssembleState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssembleState)))
  "Returns string type for a message object of type 'AssembleState"
  "dg_msgs/AssembleState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssembleState>)))
  "Returns md5sum for a message object of type '<AssembleState>"
  "38dfb48a7efcd005d49ab62be37595f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssembleState)))
  "Returns md5sum for a message object of type 'AssembleState"
  "38dfb48a7efcd005d49ab62be37595f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssembleState>)))
  "Returns full string definition for message of type '<AssembleState>"
  (cl:format cl:nil "# 上装箱体状态信息~%bool is_emergency           # 是否是急停~%bool is_auto                # 是否是自动档~%bool is_rescue              # 是否是救援模式~%bool is_reset               # 是否是复位~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssembleState)))
  "Returns full string definition for message of type 'AssembleState"
  (cl:format cl:nil "# 上装箱体状态信息~%bool is_emergency           # 是否是急停~%bool is_auto                # 是否是自动档~%bool is_rescue              # 是否是救援模式~%bool is_reset               # 是否是复位~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssembleState>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssembleState>))
  "Converts a ROS message object to a list"
  (cl:list 'AssembleState
    (cl:cons ':is_emergency (is_emergency msg))
    (cl:cons ':is_auto (is_auto msg))
    (cl:cons ':is_rescue (is_rescue msg))
    (cl:cons ':is_reset (is_reset msg))
))
