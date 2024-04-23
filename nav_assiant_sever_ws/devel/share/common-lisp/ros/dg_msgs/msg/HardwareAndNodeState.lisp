; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude HardwareAndNodeState.msg.html

(cl:defclass <HardwareAndNodeState> (roslisp-msg-protocol:ros-message)
  ((ros_topic_state
    :reader ros_topic_state
    :initarg :ros_topic_state
    :type (cl:vector dg_msgs-msg:ROSTopicState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:ROSTopicState :initial-element (cl:make-instance 'dg_msgs-msg:ROSTopicState)))
   (ros_node_state
    :reader ros_node_state
    :initarg :ros_node_state
    :type (cl:vector dg_msgs-msg:GeneralHardwareAndNodeState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:GeneralHardwareAndNodeState :initial-element (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState)))
   (ros_service_state
    :reader ros_service_state
    :initarg :ros_service_state
    :type (cl:vector dg_msgs-msg:GeneralHardwareAndNodeState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:GeneralHardwareAndNodeState :initial-element (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState)))
   (daemon_state
    :reader daemon_state
    :initarg :daemon_state
    :type (cl:vector dg_msgs-msg:GeneralHardwareAndNodeState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:GeneralHardwareAndNodeState :initial-element (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState)))
   (system_file_state
    :reader system_file_state
    :initarg :system_file_state
    :type (cl:vector dg_msgs-msg:GeneralHardwareAndNodeState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:GeneralHardwareAndNodeState :initial-element (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState)))
   (networked_device_state
    :reader networked_device_state
    :initarg :networked_device_state
    :type (cl:vector dg_msgs-msg:NetworkedDevicesState)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:NetworkedDevicesState :initial-element (cl:make-instance 'dg_msgs-msg:NetworkedDevicesState)))
   (cpu_mem_state
    :reader cpu_mem_state
    :initarg :cpu_mem_state
    :type dg_msgs-msg:CPUMemNetState
    :initform (cl:make-instance 'dg_msgs-msg:CPUMemNetState))
   (chassis_state
    :reader chassis_state
    :initarg :chassis_state
    :type dg_msgs-msg:ChassisState
    :initform (cl:make-instance 'dg_msgs-msg:ChassisState))
   (working_node_error
    :reader working_node_error
    :initarg :working_node_error
    :type (cl:vector dg_msgs-msg:UniversalStateInfo)
   :initform (cl:make-array 0 :element-type 'dg_msgs-msg:UniversalStateInfo :initial-element (cl:make-instance 'dg_msgs-msg:UniversalStateInfo)))
   (last_update_time
    :reader last_update_time
    :initarg :last_update_time
    :type cl:string
    :initform ""))
)

(cl:defclass HardwareAndNodeState (<HardwareAndNodeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareAndNodeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareAndNodeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<HardwareAndNodeState> is deprecated: use dg_msgs-msg:HardwareAndNodeState instead.")))

(cl:ensure-generic-function 'ros_topic_state-val :lambda-list '(m))
(cl:defmethod ros_topic_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:ros_topic_state-val is deprecated.  Use dg_msgs-msg:ros_topic_state instead.")
  (ros_topic_state m))

(cl:ensure-generic-function 'ros_node_state-val :lambda-list '(m))
(cl:defmethod ros_node_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:ros_node_state-val is deprecated.  Use dg_msgs-msg:ros_node_state instead.")
  (ros_node_state m))

(cl:ensure-generic-function 'ros_service_state-val :lambda-list '(m))
(cl:defmethod ros_service_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:ros_service_state-val is deprecated.  Use dg_msgs-msg:ros_service_state instead.")
  (ros_service_state m))

(cl:ensure-generic-function 'daemon_state-val :lambda-list '(m))
(cl:defmethod daemon_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:daemon_state-val is deprecated.  Use dg_msgs-msg:daemon_state instead.")
  (daemon_state m))

(cl:ensure-generic-function 'system_file_state-val :lambda-list '(m))
(cl:defmethod system_file_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:system_file_state-val is deprecated.  Use dg_msgs-msg:system_file_state instead.")
  (system_file_state m))

(cl:ensure-generic-function 'networked_device_state-val :lambda-list '(m))
(cl:defmethod networked_device_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:networked_device_state-val is deprecated.  Use dg_msgs-msg:networked_device_state instead.")
  (networked_device_state m))

(cl:ensure-generic-function 'cpu_mem_state-val :lambda-list '(m))
(cl:defmethod cpu_mem_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:cpu_mem_state-val is deprecated.  Use dg_msgs-msg:cpu_mem_state instead.")
  (cpu_mem_state m))

(cl:ensure-generic-function 'chassis_state-val :lambda-list '(m))
(cl:defmethod chassis_state-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:chassis_state-val is deprecated.  Use dg_msgs-msg:chassis_state instead.")
  (chassis_state m))

(cl:ensure-generic-function 'working_node_error-val :lambda-list '(m))
(cl:defmethod working_node_error-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:working_node_error-val is deprecated.  Use dg_msgs-msg:working_node_error instead.")
  (working_node_error m))

(cl:ensure-generic-function 'last_update_time-val :lambda-list '(m))
(cl:defmethod last_update_time-val ((m <HardwareAndNodeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-msg:last_update_time-val is deprecated.  Use dg_msgs-msg:last_update_time instead.")
  (last_update_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareAndNodeState>) ostream)
  "Serializes a message object of type '<HardwareAndNodeState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ros_topic_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ros_topic_state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ros_node_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ros_node_state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ros_service_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ros_service_state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'daemon_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'daemon_state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'system_file_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'system_file_state))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'networked_device_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'networked_device_state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cpu_mem_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'chassis_state) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'working_node_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'working_node_error))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_update_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_update_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareAndNodeState>) istream)
  "Deserializes a message object of type '<HardwareAndNodeState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ros_topic_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ros_topic_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:ROSTopicState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ros_node_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ros_node_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ros_service_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ros_service_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'daemon_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'daemon_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'system_file_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'system_file_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:GeneralHardwareAndNodeState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'networked_device_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'networked_device_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:NetworkedDevicesState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cpu_mem_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'chassis_state) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'working_node_error) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'working_node_error)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dg_msgs-msg:UniversalStateInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_update_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_update_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareAndNodeState>)))
  "Returns string type for a message object of type '<HardwareAndNodeState>"
  "dg_msgs/HardwareAndNodeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareAndNodeState)))
  "Returns string type for a message object of type 'HardwareAndNodeState"
  "dg_msgs/HardwareAndNodeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareAndNodeState>)))
  "Returns md5sum for a message object of type '<HardwareAndNodeState>"
  "563ccdb7932eed0e6e8e7fd05942ee29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareAndNodeState)))
  "Returns md5sum for a message object of type 'HardwareAndNodeState"
  "563ccdb7932eed0e6e8e7fd05942ee29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareAndNodeState>)))
  "Returns full string definition for message of type '<HardwareAndNodeState>"
  (cl:format cl:nil "dg_msgs/ROSTopicState[] ros_topic_state                 # ros话题状态~%~%dg_msgs/GeneralHardwareAndNodeState[] ros_node_state    # ros节点状态~%dg_msgs/GeneralHardwareAndNodeState[] ros_service_state # ros服务状态~%dg_msgs/GeneralHardwareAndNodeState[] daemon_state      # 守护内容状态~%dg_msgs/GeneralHardwareAndNodeState[] system_file_state # 系统文件状态~%~%dg_msgs/NetworkedDevicesState[] networked_device_state  # 联网设备状态~%~%dg_msgs/CPUMemNetState cpu_mem_state                    # cpu状态~%dg_msgs/ChassisState chassis_state                      # 底盘状态~%~%dg_msgs/UniversalStateInfo[] working_node_error         # 计算节点报错信息 - 只能包含对全局有影响的错误，如机械臂碰撞，底盘错误~%~%string last_update_time                                 # 最近一次诊断时间 - 格式 %Y-%m-%d %H:%M:%S~%================================================================================~%MSG: dg_msgs/ROSTopicState~%# ros-topic 状态~%string topic_name               # 话题名~%string publish_node             # 发布节点  ~%float32 publish_rate            # 当前发布频率~%float32 desire_rate             # 期望频率~%float32 bandwidth               # 当前占用网络带宽~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%================================================================================~%MSG: dg_msgs/GeneralHardwareAndNodeState~%# 通用的状态信息~%string name                 # 对象名~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkedDevicesState~%# 联网设备状态~%string device_name          # 设备名~%string ip_address           # 设备地址IPv4~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/CPUMemNetState~%# CPU                            # /proc/stat~%int32 cpu_count                  # cpu核心数~%float64 cpu_usage                # cpu利用率~%int32 cpu_load_1min              # cpu负载~%int32 cpu_load_5min~%int32 cpu_load_15min~%int32 process_count              # 当前进程数~%~%# Mem                            # None~%float32 mem_total                # 总内存大小 MB~%float32 mem_free                 # 当前可用内存大小 MB~%float32 mem_used_percent         # 内存使用率 %~%~%dg_msgs/DiskState[] disk_states  # 硬盘状态~%dg_msgs/NetworkCardState[] network_card_state  # 网卡状态~%~%================================================================================~%MSG: dg_msgs/DiskState~%# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkCardState~%# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/ChassisState~%string chassis_state_json                    # 底盘各种参数的json文件~%string chassis_type                          # 底盘类型~%string chassis_name                          # 底盘名~%~%# [核心参数] - 是上面的子集~%float32 battery                              # 电池电量~%geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置~%bool is_charged                              # 当前是否在充电~%~%Header header                                # 头部信息 - 主要使用的是时间戳~%dg_msgs/MonitorState state_info              # 状态信息~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareAndNodeState)))
  "Returns full string definition for message of type 'HardwareAndNodeState"
  (cl:format cl:nil "dg_msgs/ROSTopicState[] ros_topic_state                 # ros话题状态~%~%dg_msgs/GeneralHardwareAndNodeState[] ros_node_state    # ros节点状态~%dg_msgs/GeneralHardwareAndNodeState[] ros_service_state # ros服务状态~%dg_msgs/GeneralHardwareAndNodeState[] daemon_state      # 守护内容状态~%dg_msgs/GeneralHardwareAndNodeState[] system_file_state # 系统文件状态~%~%dg_msgs/NetworkedDevicesState[] networked_device_state  # 联网设备状态~%~%dg_msgs/CPUMemNetState cpu_mem_state                    # cpu状态~%dg_msgs/ChassisState chassis_state                      # 底盘状态~%~%dg_msgs/UniversalStateInfo[] working_node_error         # 计算节点报错信息 - 只能包含对全局有影响的错误，如机械臂碰撞，底盘错误~%~%string last_update_time                                 # 最近一次诊断时间 - 格式 %Y-%m-%d %H:%M:%S~%================================================================================~%MSG: dg_msgs/ROSTopicState~%# ros-topic 状态~%string topic_name               # 话题名~%string publish_node             # 发布节点  ~%float32 publish_rate            # 当前发布频率~%float32 desire_rate             # 期望频率~%float32 bandwidth               # 当前占用网络带宽~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%================================================================================~%MSG: dg_msgs/GeneralHardwareAndNodeState~%# 通用的状态信息~%string name                 # 对象名~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkedDevicesState~%# 联网设备状态~%string device_name          # 设备名~%string ip_address           # 设备地址IPv4~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/CPUMemNetState~%# CPU                            # /proc/stat~%int32 cpu_count                  # cpu核心数~%float64 cpu_usage                # cpu利用率~%int32 cpu_load_1min              # cpu负载~%int32 cpu_load_5min~%int32 cpu_load_15min~%int32 process_count              # 当前进程数~%~%# Mem                            # None~%float32 mem_total                # 总内存大小 MB~%float32 mem_free                 # 当前可用内存大小 MB~%float32 mem_used_percent         # 内存使用率 %~%~%dg_msgs/DiskState[] disk_states  # 硬盘状态~%dg_msgs/NetworkCardState[] network_card_state  # 网卡状态~%~%================================================================================~%MSG: dg_msgs/DiskState~%# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkCardState~%# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/ChassisState~%string chassis_state_json                    # 底盘各种参数的json文件~%string chassis_type                          # 底盘类型~%string chassis_name                          # 底盘名~%~%# [核心参数] - 是上面的子集~%float32 battery                              # 电池电量~%geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置~%bool is_charged                              # 当前是否在充电~%~%Header header                                # 头部信息 - 主要使用的是时间戳~%dg_msgs/MonitorState state_info              # 状态信息~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareAndNodeState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ros_topic_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ros_node_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ros_service_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'daemon_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'system_file_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'networked_device_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cpu_mem_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'chassis_state))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'working_node_error) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'last_update_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareAndNodeState>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareAndNodeState
    (cl:cons ':ros_topic_state (ros_topic_state msg))
    (cl:cons ':ros_node_state (ros_node_state msg))
    (cl:cons ':ros_service_state (ros_service_state msg))
    (cl:cons ':daemon_state (daemon_state msg))
    (cl:cons ':system_file_state (system_file_state msg))
    (cl:cons ':networked_device_state (networked_device_state msg))
    (cl:cons ':cpu_mem_state (cpu_mem_state msg))
    (cl:cons ':chassis_state (chassis_state msg))
    (cl:cons ':working_node_error (working_node_error msg))
    (cl:cons ':last_update_time (last_update_time msg))
))
