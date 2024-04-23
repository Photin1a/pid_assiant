;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::HardwareAndNodeState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'HardwareAndNodeState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::HARDWAREANDNODESTATE")
  (make-package "DG_MSGS::HARDWAREANDNODESTATE"))

(in-package "ROS")
;;//! \htmlinclude HardwareAndNodeState.msg.html


(defclass dg_msgs::HardwareAndNodeState
  :super ros::object
  :slots (_ros_topic_state _ros_node_state _ros_service_state _daemon_state _system_file_state _networked_device_state _cpu_mem_state _chassis_state _working_node_error _last_update_time ))

(defmethod dg_msgs::HardwareAndNodeState
  (:init
   (&key
    ((:ros_topic_state __ros_topic_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::ROSTopicState :init) r)) r))
    ((:ros_node_state __ros_node_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
    ((:ros_service_state __ros_service_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
    ((:daemon_state __daemon_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
    ((:system_file_state __system_file_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
    ((:networked_device_state __networked_device_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::NetworkedDevicesState :init) r)) r))
    ((:cpu_mem_state __cpu_mem_state) (instance dg_msgs::CPUMemNetState :init))
    ((:chassis_state __chassis_state) (instance dg_msgs::ChassisState :init))
    ((:working_node_error __working_node_error) (let (r) (dotimes (i 0) (push (instance dg_msgs::UniversalStateInfo :init) r)) r))
    ((:last_update_time __last_update_time) "")
    )
   (send-super :init)
   (setq _ros_topic_state __ros_topic_state)
   (setq _ros_node_state __ros_node_state)
   (setq _ros_service_state __ros_service_state)
   (setq _daemon_state __daemon_state)
   (setq _system_file_state __system_file_state)
   (setq _networked_device_state __networked_device_state)
   (setq _cpu_mem_state __cpu_mem_state)
   (setq _chassis_state __chassis_state)
   (setq _working_node_error __working_node_error)
   (setq _last_update_time (string __last_update_time))
   self)
  (:ros_topic_state
   (&rest __ros_topic_state)
   (if (keywordp (car __ros_topic_state))
       (send* _ros_topic_state __ros_topic_state)
     (progn
       (if __ros_topic_state (setq _ros_topic_state (car __ros_topic_state)))
       _ros_topic_state)))
  (:ros_node_state
   (&rest __ros_node_state)
   (if (keywordp (car __ros_node_state))
       (send* _ros_node_state __ros_node_state)
     (progn
       (if __ros_node_state (setq _ros_node_state (car __ros_node_state)))
       _ros_node_state)))
  (:ros_service_state
   (&rest __ros_service_state)
   (if (keywordp (car __ros_service_state))
       (send* _ros_service_state __ros_service_state)
     (progn
       (if __ros_service_state (setq _ros_service_state (car __ros_service_state)))
       _ros_service_state)))
  (:daemon_state
   (&rest __daemon_state)
   (if (keywordp (car __daemon_state))
       (send* _daemon_state __daemon_state)
     (progn
       (if __daemon_state (setq _daemon_state (car __daemon_state)))
       _daemon_state)))
  (:system_file_state
   (&rest __system_file_state)
   (if (keywordp (car __system_file_state))
       (send* _system_file_state __system_file_state)
     (progn
       (if __system_file_state (setq _system_file_state (car __system_file_state)))
       _system_file_state)))
  (:networked_device_state
   (&rest __networked_device_state)
   (if (keywordp (car __networked_device_state))
       (send* _networked_device_state __networked_device_state)
     (progn
       (if __networked_device_state (setq _networked_device_state (car __networked_device_state)))
       _networked_device_state)))
  (:cpu_mem_state
   (&rest __cpu_mem_state)
   (if (keywordp (car __cpu_mem_state))
       (send* _cpu_mem_state __cpu_mem_state)
     (progn
       (if __cpu_mem_state (setq _cpu_mem_state (car __cpu_mem_state)))
       _cpu_mem_state)))
  (:chassis_state
   (&rest __chassis_state)
   (if (keywordp (car __chassis_state))
       (send* _chassis_state __chassis_state)
     (progn
       (if __chassis_state (setq _chassis_state (car __chassis_state)))
       _chassis_state)))
  (:working_node_error
   (&rest __working_node_error)
   (if (keywordp (car __working_node_error))
       (send* _working_node_error __working_node_error)
     (progn
       (if __working_node_error (setq _working_node_error (car __working_node_error)))
       _working_node_error)))
  (:last_update_time
   (&optional __last_update_time)
   (if __last_update_time (setq _last_update_time __last_update_time)) _last_update_time)
  (:serialization-length
   ()
   (+
    ;; dg_msgs/ROSTopicState[] _ros_topic_state
    (apply #'+ (send-all _ros_topic_state :serialization-length)) 4
    ;; dg_msgs/GeneralHardwareAndNodeState[] _ros_node_state
    (apply #'+ (send-all _ros_node_state :serialization-length)) 4
    ;; dg_msgs/GeneralHardwareAndNodeState[] _ros_service_state
    (apply #'+ (send-all _ros_service_state :serialization-length)) 4
    ;; dg_msgs/GeneralHardwareAndNodeState[] _daemon_state
    (apply #'+ (send-all _daemon_state :serialization-length)) 4
    ;; dg_msgs/GeneralHardwareAndNodeState[] _system_file_state
    (apply #'+ (send-all _system_file_state :serialization-length)) 4
    ;; dg_msgs/NetworkedDevicesState[] _networked_device_state
    (apply #'+ (send-all _networked_device_state :serialization-length)) 4
    ;; dg_msgs/CPUMemNetState _cpu_mem_state
    (send _cpu_mem_state :serialization-length)
    ;; dg_msgs/ChassisState _chassis_state
    (send _chassis_state :serialization-length)
    ;; dg_msgs/UniversalStateInfo[] _working_node_error
    (apply #'+ (send-all _working_node_error :serialization-length)) 4
    ;; string _last_update_time
    4 (length _last_update_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/ROSTopicState[] _ros_topic_state
     (write-long (length _ros_topic_state) s)
     (dolist (elem _ros_topic_state)
       (send elem :serialize s)
       )
     ;; dg_msgs/GeneralHardwareAndNodeState[] _ros_node_state
     (write-long (length _ros_node_state) s)
     (dolist (elem _ros_node_state)
       (send elem :serialize s)
       )
     ;; dg_msgs/GeneralHardwareAndNodeState[] _ros_service_state
     (write-long (length _ros_service_state) s)
     (dolist (elem _ros_service_state)
       (send elem :serialize s)
       )
     ;; dg_msgs/GeneralHardwareAndNodeState[] _daemon_state
     (write-long (length _daemon_state) s)
     (dolist (elem _daemon_state)
       (send elem :serialize s)
       )
     ;; dg_msgs/GeneralHardwareAndNodeState[] _system_file_state
     (write-long (length _system_file_state) s)
     (dolist (elem _system_file_state)
       (send elem :serialize s)
       )
     ;; dg_msgs/NetworkedDevicesState[] _networked_device_state
     (write-long (length _networked_device_state) s)
     (dolist (elem _networked_device_state)
       (send elem :serialize s)
       )
     ;; dg_msgs/CPUMemNetState _cpu_mem_state
       (send _cpu_mem_state :serialize s)
     ;; dg_msgs/ChassisState _chassis_state
       (send _chassis_state :serialize s)
     ;; dg_msgs/UniversalStateInfo[] _working_node_error
     (write-long (length _working_node_error) s)
     (dolist (elem _working_node_error)
       (send elem :serialize s)
       )
     ;; string _last_update_time
       (write-long (length _last_update_time) s) (princ _last_update_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/ROSTopicState[] _ros_topic_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ros_topic_state (let (r) (dotimes (i n) (push (instance dg_msgs::ROSTopicState :init) r)) r))
     (dolist (elem- _ros_topic_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/GeneralHardwareAndNodeState[] _ros_node_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ros_node_state (let (r) (dotimes (i n) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
     (dolist (elem- _ros_node_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/GeneralHardwareAndNodeState[] _ros_service_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ros_service_state (let (r) (dotimes (i n) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
     (dolist (elem- _ros_service_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/GeneralHardwareAndNodeState[] _daemon_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _daemon_state (let (r) (dotimes (i n) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
     (dolist (elem- _daemon_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/GeneralHardwareAndNodeState[] _system_file_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _system_file_state (let (r) (dotimes (i n) (push (instance dg_msgs::GeneralHardwareAndNodeState :init) r)) r))
     (dolist (elem- _system_file_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/NetworkedDevicesState[] _networked_device_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _networked_device_state (let (r) (dotimes (i n) (push (instance dg_msgs::NetworkedDevicesState :init) r)) r))
     (dolist (elem- _networked_device_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/CPUMemNetState _cpu_mem_state
     (send _cpu_mem_state :deserialize buf ptr-) (incf ptr- (send _cpu_mem_state :serialization-length))
   ;; dg_msgs/ChassisState _chassis_state
     (send _chassis_state :deserialize buf ptr-) (incf ptr- (send _chassis_state :serialization-length))
   ;; dg_msgs/UniversalStateInfo[] _working_node_error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _working_node_error (let (r) (dotimes (i n) (push (instance dg_msgs::UniversalStateInfo :init) r)) r))
     (dolist (elem- _working_node_error)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _last_update_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_update_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::HardwareAndNodeState :md5sum-) "563ccdb7932eed0e6e8e7fd05942ee29")
(setf (get dg_msgs::HardwareAndNodeState :datatype-) "dg_msgs/HardwareAndNodeState")
(setf (get dg_msgs::HardwareAndNodeState :definition-)
      "dg_msgs/ROSTopicState[] ros_topic_state                 # ros话题状态

dg_msgs/GeneralHardwareAndNodeState[] ros_node_state    # ros节点状态
dg_msgs/GeneralHardwareAndNodeState[] ros_service_state # ros服务状态
dg_msgs/GeneralHardwareAndNodeState[] daemon_state      # 守护内容状态
dg_msgs/GeneralHardwareAndNodeState[] system_file_state # 系统文件状态

dg_msgs/NetworkedDevicesState[] networked_device_state  # 联网设备状态

dg_msgs/CPUMemNetState cpu_mem_state                    # cpu状态
dg_msgs/ChassisState chassis_state                      # 底盘状态

dg_msgs/UniversalStateInfo[] working_node_error         # 计算节点报错信息 - 只能包含对全局有影响的错误，如机械臂碰撞，底盘错误

string last_update_time                                 # 最近一次诊断时间 - 格式 %Y-%m-%d %H:%M:%S
================================================================================
MSG: dg_msgs/ROSTopicState
# ros-topic 状态
string topic_name               # 话题名
string publish_node             # 发布节点  
float32 publish_rate            # 当前发布频率
float32 desire_rate             # 期望频率
float32 bandwidth               # 当前占用网络带宽

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
================================================================================
MSG: dg_msgs/GeneralHardwareAndNodeState
# 通用的状态信息
string name                 # 对象名

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/NetworkedDevicesState
# 联网设备状态
string device_name          # 设备名
string ip_address           # 设备地址IPv4

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/CPUMemNetState
# CPU                            # /proc/stat
int32 cpu_count                  # cpu核心数
float64 cpu_usage                # cpu利用率
int32 cpu_load_1min              # cpu负载
int32 cpu_load_5min
int32 cpu_load_15min
int32 process_count              # 当前进程数

# Mem                            # None
float32 mem_total                # 总内存大小 MB
float32 mem_free                 # 当前可用内存大小 MB
float32 mem_used_percent         # 内存使用率 %

dg_msgs/DiskState[] disk_states  # 硬盘状态
dg_msgs/NetworkCardState[] network_card_state  # 网卡状态

================================================================================
MSG: dg_msgs/DiskState
# 硬盘状态
string disk_name            # 硬盘盘符
float32 disk_total          # 硬盘总空间 GB
float32 disk_used           # 已经使用的空间 GB
float32 disk_avail          # 剩余可用空间
float32 disk_used_percent   # 硬盘使用率

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/NetworkCardState
# 网卡状态
string network_card_name        # 网卡名
string ip_address               # IP地址IPv4
float32 net_upload              # 网卡上传速度 KB/s
float32 net_download            # 网卡下载速度 KB/s

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/ChassisState
string chassis_state_json                    # 底盘各种参数的json文件
string chassis_type                          # 底盘类型
string chassis_name                          # 底盘名

# [核心参数] - 是上面的子集
float32 battery                              # 电池电量
geometry_msgs/PoseStamped current_pose       # 底盘当前所在位置
bool is_charged                              # 当前是否在充电

Header header                                # 头部信息 - 主要使用的是时间戳
dg_msgs/MonitorState state_info              # 状态信息
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
string state_msgs   # 附加信息，相当于additional_msgs
")



(provide :dg_msgs/HardwareAndNodeState "563ccdb7932eed0e6e8e7fd05942ee29")


