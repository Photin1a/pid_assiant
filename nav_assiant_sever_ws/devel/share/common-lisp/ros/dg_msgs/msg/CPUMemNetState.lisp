; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude CPUMemNetState.msg.html

(cl:defclass <CPUMemNetState> (roslisp-msg-protocol:ros-message)
  ((cpu_count
    :reader cpu_count
    :initarg :cpu_count
    :type cl:integer
    :initform 0)
   (cpu_usage
    :reader cpu_usage
    :initarg :cpu_usage
    :type cl:float
    :initform 0.0)
   (cpu_load_1min
    :reader cpu_load_1min
    :initarg :cpu_load_1min
    :type cl:integer
    :initform 0)
   (cpu_load_5min
    :reader cpu_load_5min
    :initarg :cpu_load_5min
    :type cl:integer
    :initform 0)
   (cpu_load_15min
    :reader cpu_load_15min
    :initarg :cpu_load_15min
    :type cl:integer
    :initform 0)
   (process_count
    :reader process_count
    :initarg :process_count
    :type cl:integer
    :initform 0)
   (mem_total
    :reader mem_total
    :initarg :mem_total
    :type cl:float
    :initform 0.0)
   (mem_free
    :reader mem_free
    :initarg :mem_free
    :type cl:float
    :initform 0.0)
   (mem_used_percent
    :reader mem_used_percent
    :initarg :mem_used_percent
    :type cl:float
    :initform 0.0)
   (disk_states
    :reader disk_states
    :initarg :disk_states
    :type (cl:vector dg_msgs-msg:DiskState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:DiskState :initial-element (cl:make-instance 'dg_msgs-msg:DiskState)))
   (network_card_state
    :reader network_card_state
    :initarg :network_card_state
    :type (cl:vector dg_msgs-msg:NetworkCardState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:NetworkCardState :initial-element (cl:make-instance 'dg_msgs-msg:NetworkCardState))))
)

(cl:defclass CPUMemNetState (<CPUMemNetState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CPUMemNetState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CPUMemNetState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<CPUMemNetState> is deprecated: use dg_msgs-msg:CPUMemNetState instead.")))

(cl:ensure-generic-function 'cpu_count-val :lambda-list '(m))
(cl:defmethod cpu_count-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cpu_count-val is deprecated.  Use dg_msgs-msg:cpu_count instead.")
  (cpu_count m))

(cl:ensure-generic-function 'cpu_usage-val :lambda-list '(m))
(cl:defmethod cpu_usage-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cpu_usage-val is deprecated.  Use dg_msgs-msg:cpu_usage instead.")
  (cpu_usage m))

(cl:ensure-generic-function 'cpu_load_1min-val :lambda-list '(m))
(cl:defmethod cpu_load_1min-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cpu_load_1min-val is deprecated.  Use dg_msgs-msg:cpu_load_1min instead.")
  (cpu_load_1min m))

(cl:ensure-generic-function 'cpu_load_5min-val :lambda-list '(m))
(cl:defmethod cpu_load_5min-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cpu_load_5min-val is deprecated.  Use dg_msgs-msg:cpu_load_5min instead.")
  (cpu_load_5min m))

(cl:ensure-generic-function 'cpu_load_15min-val :lambda-list '(m))
(cl:defmethod cpu_load_15min-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cpu_load_15min-val is deprecated.  Use dg_msgs-msg:cpu_load_15min instead.")
  (cpu_load_15min m))

(cl:ensure-generic-function 'process_count-val :lambda-list '(m))
(cl:defmethod process_count-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:process_count-val is deprecated.  Use dg_msgs-msg:process_count instead.")
  (process_count m))

(cl:ensure-generic-function 'mem_total-val :lambda-list '(m))
(cl:defmethod mem_total-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:mem_total-val is deprecated.  Use dg_msgs-msg:mem_total instead.")
  (mem_total m))

(cl:ensure-generic-function 'mem_free-val :lambda-list '(m))
(cl:defmethod mem_free-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:mem_free-val is deprecated.  Use dg_msgs-msg:mem_free instead.")
  (mem_free m))

(cl:ensure-generic-function 'mem_used_percent-val :lambda-list '(m))
(cl:defmethod mem_used_percent-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:mem_used_percent-val is deprecated.  Use dg_msgs-msg:mem_used_percent instead.")
  (mem_used_percent m))

(cl:ensure-generic-function 'disk_states-val :lambda-list '(m))
(cl:defmethod disk_states-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:disk_states-val is deprecated.  Use dg_msgs-msg:disk_states instead.")
  (disk_states m))

(cl:ensure-generic-function 'network_card_state-val :lambda-list '(m))
(cl:defmethod network_card_state-val ((m <CPUMemNetState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:network_card_state-val is deprecated.  Use dg_msgs-msg:network_card_state instead.")
  (network_card_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CPUMemNetState>) ostream)
  "Serializes a message object of type '<CPUMemNetState>"
  (cl:let* ((signed (cl:slot-value msg 'cpu_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cpu_usage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'cpu_load_1min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cpu_load_5min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cpu_load_15min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'process_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mem_total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mem_free))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mem_used_percent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'disk_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'disk_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'network_card_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'network_card_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CPUMemNetState>) istream)
  "Deserializes a message object of type '<CPUMemNetState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cpu_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_usage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cpu_load_1min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cpu_load_5min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cpu_load_15min) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'process_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mem_total) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mem_free) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mem_used_percent) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'disk_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'disk_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:DiskState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'network_card_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'network_card_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:NetworkCardState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CPUMemNetState>)))
  "Returns string type for a message object of type '<CPUMemNetState>"
  "dg_msgs/CPUMemNetState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CPUMemNetState)))
  "Returns string type for a message object of type 'CPUMemNetState"
  "dg_msgs/CPUMemNetState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CPUMemNetState>)))
  "Returns md5sum for a message object of type '<CPUMemNetState>"
  "559499aa6a41a1eeb7002f1b884a4b82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CPUMemNetState)))
  "Returns md5sum for a message object of type 'CPUMemNetState"
  "559499aa6a41a1eeb7002f1b884a4b82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CPUMemNetState>)))
  "Returns full string definition for message of type '<CPUMemNetState>"
  (cl:format cl:nil "# CPU                            # /proc/stat~%int32 cpu_count                  # cpu核心数~%float64 cpu_usage                # cpu利用率~%int32 cpu_load_1min              # cpu负载~%int32 cpu_load_5min~%int32 cpu_load_15min~%int32 process_count              # 当前进程数~%~%# Mem                            # None~%float32 mem_total                # 总内存大小 MB~%float32 mem_free                 # 当前可用内存大小 MB~%float32 mem_used_percent         # 内存使用率 %~%~%dg_msgs/DiskState[] disk_states  # 硬盘状态~%dg_msgs/NetworkCardState[] network_card_state  # 网卡状态~%~%================================================================================~%MSG: dg_msgs/DiskState~%# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%================================================================================~%MSG: dg_msgs/NetworkCardState~%# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CPUMemNetState)))
  "Returns full string definition for message of type 'CPUMemNetState"
  (cl:format cl:nil "# CPU                            # /proc/stat~%int32 cpu_count                  # cpu核心数~%float64 cpu_usage                # cpu利用率~%int32 cpu_load_1min              # cpu负载~%int32 cpu_load_5min~%int32 cpu_load_15min~%int32 process_count              # 当前进程数~%~%# Mem                            # None~%float32 mem_total                # 总内存大小 MB~%float32 mem_free                 # 当前可用内存大小 MB~%float32 mem_used_percent         # 内存使用率 %~%~%dg_msgs/DiskState[] disk_states  # 硬盘状态~%dg_msgs/NetworkCardState[] network_card_state  # 网卡状态~%~%================================================================================~%MSG: dg_msgs/DiskState~%# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%================================================================================~%MSG: dg_msgs/NetworkCardState~%# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CPUMemNetState>))
  (cl:+ 0
     4
     8
     4
     4
     4
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'disk_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'network_card_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CPUMemNetState>))
  "Converts a ROS message object to a list"
  (cl:list 'CPUMemNetState
    (cl:cons ':cpu_count (cpu_count msg))
    (cl:cons ':cpu_usage (cpu_usage msg))
    (cl:cons ':cpu_load_1min (cpu_load_1min msg))
    (cl:cons ':cpu_load_5min (cpu_load_5min msg))
    (cl:cons ':cpu_load_15min (cpu_load_15min msg))
    (cl:cons ':process_count (process_count msg))
    (cl:cons ':mem_total (mem_total msg))
    (cl:cons ':mem_free (mem_free msg))
    (cl:cons ':mem_used_percent (mem_used_percent msg))
    (cl:cons ':disk_states (disk_states msg))
    (cl:cons ':network_card_state (network_card_state msg))
))
