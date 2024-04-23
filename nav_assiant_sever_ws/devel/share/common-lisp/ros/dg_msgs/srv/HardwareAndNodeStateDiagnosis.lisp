; Auto-generated. Do not edit!


(cl:in-package dg_msgs-srv)


;//! \htmlinclude HardwareAndNodeStateDiagnosis-request.msg.html

(cl:defclass <HardwareAndNodeStateDiagnosis-request> (roslisp-msg-protocol:ros-message)
  ((diagnosis
    :reader diagnosis
    :initarg :diagnosis
    :type cl:string
    :initform ""))
)

(cl:defclass HardwareAndNodeStateDiagnosis-request (<HardwareAndNodeStateDiagnosis-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareAndNodeStateDiagnosis-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareAndNodeStateDiagnosis-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<HardwareAndNodeStateDiagnosis-request> is deprecated: use dg_msgs-srv:HardwareAndNodeStateDiagnosis-request instead.")))

(cl:ensure-generic-function 'diagnosis-val :lambda-list '(m))
(cl:defmethod diagnosis-val ((m <HardwareAndNodeStateDiagnosis-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:diagnosis-val is deprecated.  Use dg_msgs-srv:diagnosis instead.")
  (diagnosis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareAndNodeStateDiagnosis-request>) ostream)
  "Serializes a message object of type '<HardwareAndNodeStateDiagnosis-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'diagnosis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'diagnosis))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareAndNodeStateDiagnosis-request>) istream)
  "Deserializes a message object of type '<HardwareAndNodeStateDiagnosis-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'diagnosis) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'diagnosis) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareAndNodeStateDiagnosis-request>)))
  "Returns string type for a service object of type '<HardwareAndNodeStateDiagnosis-request>"
  "dg_msgs/HardwareAndNodeStateDiagnosisRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareAndNodeStateDiagnosis-request)))
  "Returns string type for a service object of type 'HardwareAndNodeStateDiagnosis-request"
  "dg_msgs/HardwareAndNodeStateDiagnosisRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareAndNodeStateDiagnosis-request>)))
  "Returns md5sum for a message object of type '<HardwareAndNodeStateDiagnosis-request>"
  "d08725ae8368788fa09714c61c612f6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareAndNodeStateDiagnosis-request)))
  "Returns md5sum for a message object of type 'HardwareAndNodeStateDiagnosis-request"
  "d08725ae8368788fa09714c61c612f6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareAndNodeStateDiagnosis-request>)))
  "Returns full string definition for message of type '<HardwareAndNodeStateDiagnosis-request>"
  (cl:format cl:nil "string diagnosis            # 需要诊断的内容，当为空时则执行全部诊断~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareAndNodeStateDiagnosis-request)))
  "Returns full string definition for message of type 'HardwareAndNodeStateDiagnosis-request"
  (cl:format cl:nil "string diagnosis            # 需要诊断的内容，当为空时则执行全部诊断~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareAndNodeStateDiagnosis-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'diagnosis))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareAndNodeStateDiagnosis-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareAndNodeStateDiagnosis-request
    (cl:cons ':diagnosis (diagnosis msg))
))
;//! \htmlinclude HardwareAndNodeStateDiagnosis-response.msg.html

(cl:defclass <HardwareAndNodeStateDiagnosis-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type dg_msgs-msg:HardwareAndNodeState
    :initform (cl:make-instance 'dg_msgs-msg:HardwareAndNodeState)))
)

(cl:defclass HardwareAndNodeStateDiagnosis-response (<HardwareAndNodeStateDiagnosis-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HardwareAndNodeStateDiagnosis-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HardwareAndNodeStateDiagnosis-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-srv:<HardwareAndNodeStateDiagnosis-response> is deprecated: use dg_msgs-srv:HardwareAndNodeStateDiagnosis-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HardwareAndNodeStateDiagnosis-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dg_msgs-srv:state-val is deprecated.  Use dg_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HardwareAndNodeStateDiagnosis-response>) ostream)
  "Serializes a message object of type '<HardwareAndNodeStateDiagnosis-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HardwareAndNodeStateDiagnosis-response>) istream)
  "Deserializes a message object of type '<HardwareAndNodeStateDiagnosis-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HardwareAndNodeStateDiagnosis-response>)))
  "Returns string type for a service object of type '<HardwareAndNodeStateDiagnosis-response>"
  "dg_msgs/HardwareAndNodeStateDiagnosisResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareAndNodeStateDiagnosis-response)))
  "Returns string type for a service object of type 'HardwareAndNodeStateDiagnosis-response"
  "dg_msgs/HardwareAndNodeStateDiagnosisResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HardwareAndNodeStateDiagnosis-response>)))
  "Returns md5sum for a message object of type '<HardwareAndNodeStateDiagnosis-response>"
  "d08725ae8368788fa09714c61c612f6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HardwareAndNodeStateDiagnosis-response)))
  "Returns md5sum for a message object of type 'HardwareAndNodeStateDiagnosis-response"
  "d08725ae8368788fa09714c61c612f6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HardwareAndNodeStateDiagnosis-response>)))
  "Returns full string definition for message of type '<HardwareAndNodeStateDiagnosis-response>"
  (cl:format cl:nil "dg_msgs/HardwareAndNodeState state~%~%================================================================================~%MSG: dg_msgs/HardwareAndNodeState~%dg_msgs/ROSTopicState[] ros_topic_state                 # ros话题状态~%~%dg_msgs/GeneralHardwareAndNodeState[] ros_node_state    # ros节点状态~%dg_msgs/GeneralHardwareAndNodeState[] ros_service_state # ros服务状态~%dg_msgs/GeneralHardwareAndNodeState[] daemon_state      # 守护内容状态~%dg_msgs/GeneralHardwareAndNodeState[] system_file_state # 系统文件状态~%~%dg_msgs/NetworkedDevicesState[] networked_device_state  # 联网设备状态~%~%dg_msgs/CPUMemNetState cpu_mem_state                    # cpu状态~%dg_msgs/ChassisState chassis_state                      # 底盘状态~%~%dg_msgs/UniversalStateInfo[] working_node_error         # 计算节点报错信息 - 只能包含对全局有影响的错误，如机械臂碰撞，底盘错误~%~%string last_update_time                                 # 最近一次诊断时间 - 格式 %Y-%m-%d %H:%M:%S~%================================================================================~%MSG: dg_msgs/ROSTopicState~%# ros-topic 状态~%string topic_name               # 话题名~%string publish_node             # 发布节点  ~%float32 publish_rate            # 当前发布频率~%float32 desire_rate             # 期望频率~%float32 bandwidth               # 当前占用网络带宽~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%================================================================================~%MSG: dg_msgs/GeneralHardwareAndNodeState~%# 通用的状态信息~%string name                 # 对象名~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkedDevicesState~%# 联网设备状态~%string device_name          # 设备名~%string ip_address           # 设备地址IPv4~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/CPUMemNetState~%# CPU                            # /proc/stat~%int32 cpu_count                  # cpu核心数~%float64 cpu_usage                # cpu利用率~%int32 cpu_load_1min              # cpu负载~%int32 cpu_load_5min~%int32 cpu_load_15min~%int32 process_count              # 当前进程数~%~%# Mem                            # None~%float32 mem_total                # 总内存大小 MB~%float32 mem_free                 # 当前可用内存大小 MB~%float32 mem_used_percent         # 内存使用率 %~%~%dg_msgs/DiskState[] disk_states  # 硬盘状态~%dg_msgs/NetworkCardState[] network_card_state  # 网卡状态~%~%================================================================================~%MSG: dg_msgs/DiskState~%# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkCardState~%# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/ChassisState~%string chassis_state_json                    # 底盘各种参数的json文件~%string chassis_type                          # 底盘类型~%string chassis_name                          # 底盘名~%~%# [核心参数] - 是上面的子集~%float32 battery                              # 电池电量~%geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置~%bool is_charged                              # 当前是否在充电~%~%Header header                                # 头部信息 - 主要使用的是时间戳~%dg_msgs/MonitorState state_info              # 状态信息~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HardwareAndNodeStateDiagnosis-response)))
  "Returns full string definition for message of type 'HardwareAndNodeStateDiagnosis-response"
  (cl:format cl:nil "dg_msgs/HardwareAndNodeState state~%~%================================================================================~%MSG: dg_msgs/HardwareAndNodeState~%dg_msgs/ROSTopicState[] ros_topic_state                 # ros话题状态~%~%dg_msgs/GeneralHardwareAndNodeState[] ros_node_state    # ros节点状态~%dg_msgs/GeneralHardwareAndNodeState[] ros_service_state # ros服务状态~%dg_msgs/GeneralHardwareAndNodeState[] daemon_state      # 守护内容状态~%dg_msgs/GeneralHardwareAndNodeState[] system_file_state # 系统文件状态~%~%dg_msgs/NetworkedDevicesState[] networked_device_state  # 联网设备状态~%~%dg_msgs/CPUMemNetState cpu_mem_state                    # cpu状态~%dg_msgs/ChassisState chassis_state                      # 底盘状态~%~%dg_msgs/UniversalStateInfo[] working_node_error         # 计算节点报错信息 - 只能包含对全局有影响的错误，如机械臂碰撞，底盘错误~%~%string last_update_time                                 # 最近一次诊断时间 - 格式 %Y-%m-%d %H:%M:%S~%================================================================================~%MSG: dg_msgs/ROSTopicState~%# ros-topic 状态~%string topic_name               # 话题名~%string publish_node             # 发布节点  ~%float32 publish_rate            # 当前发布频率~%float32 desire_rate             # 期望频率~%float32 bandwidth               # 当前占用网络带宽~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/MonitorState~%# 监控状态 - 当状态正常时错误码为0~%int32 error_code            # 错误码~%string additional_msgs       # 附加信息~%================================================================================~%MSG: dg_msgs/GeneralHardwareAndNodeState~%# 通用的状态信息~%string name                 # 对象名~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkedDevicesState~%# 联网设备状态~%string device_name          # 设备名~%string ip_address           # 设备地址IPv4~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/CPUMemNetState~%# CPU                            # /proc/stat~%int32 cpu_count                  # cpu核心数~%float64 cpu_usage                # cpu利用率~%int32 cpu_load_1min              # cpu负载~%int32 cpu_load_5min~%int32 cpu_load_15min~%int32 process_count              # 当前进程数~%~%# Mem                            # None~%float32 mem_total                # 总内存大小 MB~%float32 mem_free                 # 当前可用内存大小 MB~%float32 mem_used_percent         # 内存使用率 %~%~%dg_msgs/DiskState[] disk_states  # 硬盘状态~%dg_msgs/NetworkCardState[] network_card_state  # 网卡状态~%~%================================================================================~%MSG: dg_msgs/DiskState~%# 硬盘状态~%string disk_name            # 硬盘盘符~%float32 disk_total          # 硬盘总空间 GB~%float32 disk_used           # 已经使用的空间 GB~%float32 disk_avail          # 剩余可用空间~%float32 disk_used_percent   # 硬盘使用率~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/NetworkCardState~%# 网卡状态~%string network_card_name        # 网卡名~%string ip_address               # IP地址IPv4~%float32 net_upload              # 网卡上传速度 KB/s~%float32 net_download            # 网卡下载速度 KB/s~%~%dg_msgs/MonitorState state_info         # 状态信息~%================================================================================~%MSG: dg_msgs/ChassisState~%string chassis_state_json                    # 底盘各种参数的json文件~%string chassis_type                          # 底盘类型~%string chassis_name                          # 底盘名~%~%# [核心参数] - 是上面的子集~%float32 battery                              # 电池电量~%geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置~%bool is_charged                              # 当前是否在充电~%~%Header header                                # 头部信息 - 主要使用的是时间戳~%dg_msgs/MonitorState state_info              # 状态信息~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: dg_msgs/UniversalStateInfo~%int32 state_index   # 状态索引值：统一0是正常，其他数字自定义~%string node_name    # 当前节点名~%string state_msgs   # 附加信息，相当于additional_msgs~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HardwareAndNodeStateDiagnosis-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HardwareAndNodeStateDiagnosis-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HardwareAndNodeStateDiagnosis-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HardwareAndNodeStateDiagnosis)))
  'HardwareAndNodeStateDiagnosis-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HardwareAndNodeStateDiagnosis)))
  'HardwareAndNodeStateDiagnosis-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HardwareAndNodeStateDiagnosis)))
  "Returns string type for a service object of type '<HardwareAndNodeStateDiagnosis>"
  "dg_msgs/HardwareAndNodeStateDiagnosis")