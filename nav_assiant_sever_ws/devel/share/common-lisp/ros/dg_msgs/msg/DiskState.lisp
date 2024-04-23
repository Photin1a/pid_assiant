; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude DiskState.msg.html

(cl:defclass <DiskState> (roslisp-msg-protocol:ros-message)
  ((disk_name
    :reader disk_name
    :initarg :disk_name
    :type cl:string
    :initform "")
   (disk_total
    :reader disk_total
    :initarg :disk_total
    :type cl:float
    :initform 0.0)
   (disk_used
    :reader disk_used
    :initarg :disk_used
    :type cl:float
    :initform 0.0)
   (disk_avail
    :reader disk_avail
    :initarg :disk_avail
    :type cl:float
    :initform 0.0)
   (disk_used_percent
    :reader disk_used_percent
    :initarg :disk_used_percent
    :type cl:float
    :initform 0.0)
   (state_info
    :reader state_info
    :initarg :state_info
    :type dg_msgs-msg:MonitorState
    :initform (cl:make-instance 'dg_msgs-msg:MonitorState)))
)

(cl:defclass DiskState (<DiskState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<DiskState> is deprecated: use dg_msgs-msg:DiskState instead.")))

(cl:ensure-generic-function 'disk_name-val :lambda-list '(m))
(cl:defmethod disk_name-val ((m <DiskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:disk_name-val is deprecated.  Use dg_msgs-msg:disk_name instead.")
  (disk_name m))

(cl:ensure-generic-function 'disk_total-val :lambda-list '(m))
(cl:defmethod disk_total-val ((m <DiskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:disk_total-val is deprecated.  Use dg_msgs-msg:disk_total instead.")
  (disk_total m))

(cl:ensure-generic-function 'disk_used-val :lambda-list '(m))
(cl:defmethod disk_used-val ((m <DiskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:disk_used-val is deprecated.  Use dg_msgs-msg:disk_used instead.")
  (disk_used m))

(cl:ensure-generic-function 'disk_avail-val :lambda-list '(m))
(cl:defmethod disk_avail-val ((m <DiskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:disk_avail-val is deprecated.  Use dg_msgs-msg:disk_avail instead.")
  (disk_avail m))

(cl:ensure-generic-function 'disk_used_percent-val :lambda-list '(m))
(cl:defmethod disk_used_percent-val ((m <DiskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:disk_used_percent-val is deprecated.  Use dg_msgs-msg:disk_used_percent instead.")
  (disk_used_percent m))

(cl:ensure-generic-function 'state_info-val :lambda-list '(m))
(cl:defmethod state_info-val ((m <DiskState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:state_info-val is deprecated.  Use dg_msgs-msg:state_info instead.")
  (state_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskState>) ostream)
  "Serializes a message object of type '<DiskState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'disk_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'disk_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'disk_total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'disk_used))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'disk_avail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'disk_used_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskState>) istream)
  "Deserializes a message object of type '<DiskState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'disk_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'disk_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disk_total) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disk_used) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disk_avail) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disk_used_percent) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskState>)))
  "Returns string type for a message object of type '<DiskState>"
  "dg_msgs/DiskState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskState)))
  "Returns string type for a message object of type 'DiskState"
  "dg_msgs/DiskState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskState>)))
  "Returns md5sum for a message object of type '<DiskState>"
  "0ae89d9226df323af7a5a7808953730a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskState)))
  "Returns md5sum for a message object of type 'DiskState"
  "0ae89d9226df323af7a5a7808953730a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskState>)))
  "Returns full string definition for message of type '<DiskState>"
  (cl:format cl:nil "# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskState)))
  "Returns full string definition for message of type 'DiskState"
  (cl:format cl:nil "# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'disk_name))
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskState>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskState
    (cl:cons ':disk_name (disk_name msg))
    (cl:cons ':disk_total (disk_total msg))
    (cl:cons ':disk_used (disk_used msg))
    (cl:cons ':disk_avail (disk_avail msg))
    (cl:cons ':disk_used_percent (disk_used_percent msg))
    (cl:cons ':state_info (state_info msg))
))
