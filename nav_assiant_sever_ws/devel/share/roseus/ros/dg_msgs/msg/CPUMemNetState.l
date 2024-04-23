;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CPUMemNetState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CPUMemNetState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CPUMEMNETSTATE")
  (make-package "DG_MSGS::CPUMEMNETSTATE"))

(in-package "ROS")
;;//! \htmlinclude CPUMemNetState.msg.html


(defclass dg_msgs::CPUMemNetState
  :super ros::object
  :slots (_cpu_count _cpu_usage _cpu_load_1min _cpu_load_5min _cpu_load_15min _process_count _mem_total _mem_free _mem_used_percent _disk_states _network_card_state ))

(defmethod dg_msgs::CPUMemNetState
  (:init
   (&key
    ((:cpu_count __cpu_count) 0)
    ((:cpu_usage __cpu_usage) 0.0)
    ((:cpu_load_1min __cpu_load_1min) 0)
    ((:cpu_load_5min __cpu_load_5min) 0)
    ((:cpu_load_15min __cpu_load_15min) 0)
    ((:process_count __process_count) 0)
    ((:mem_total __mem_total) 0.0)
    ((:mem_free __mem_free) 0.0)
    ((:mem_used_percent __mem_used_percent) 0.0)
    ((:disk_states __disk_states) (let (r) (dotimes (i 0) (push (instance dg_msgs::DiskState :init) r)) r))
    ((:network_card_state __network_card_state) (let (r) (dotimes (i 0) (push (instance dg_msgs::NetworkCardState :init) r)) r))
    )
   (send-super :init)
   (setq _cpu_count (round __cpu_count))
   (setq _cpu_usage (float __cpu_usage))
   (setq _cpu_load_1min (round __cpu_load_1min))
   (setq _cpu_load_5min (round __cpu_load_5min))
   (setq _cpu_load_15min (round __cpu_load_15min))
   (setq _process_count (round __process_count))
   (setq _mem_total (float __mem_total))
   (setq _mem_free (float __mem_free))
   (setq _mem_used_percent (float __mem_used_percent))
   (setq _disk_states __disk_states)
   (setq _network_card_state __network_card_state)
   self)
  (:cpu_count
   (&optional __cpu_count)
   (if __cpu_count (setq _cpu_count __cpu_count)) _cpu_count)
  (:cpu_usage
   (&optional __cpu_usage)
   (if __cpu_usage (setq _cpu_usage __cpu_usage)) _cpu_usage)
  (:cpu_load_1min
   (&optional __cpu_load_1min)
   (if __cpu_load_1min (setq _cpu_load_1min __cpu_load_1min)) _cpu_load_1min)
  (:cpu_load_5min
   (&optional __cpu_load_5min)
   (if __cpu_load_5min (setq _cpu_load_5min __cpu_load_5min)) _cpu_load_5min)
  (:cpu_load_15min
   (&optional __cpu_load_15min)
   (if __cpu_load_15min (setq _cpu_load_15min __cpu_load_15min)) _cpu_load_15min)
  (:process_count
   (&optional __process_count)
   (if __process_count (setq _process_count __process_count)) _process_count)
  (:mem_total
   (&optional __mem_total)
   (if __mem_total (setq _mem_total __mem_total)) _mem_total)
  (:mem_free
   (&optional __mem_free)
   (if __mem_free (setq _mem_free __mem_free)) _mem_free)
  (:mem_used_percent
   (&optional __mem_used_percent)
   (if __mem_used_percent (setq _mem_used_percent __mem_used_percent)) _mem_used_percent)
  (:disk_states
   (&rest __disk_states)
   (if (keywordp (car __disk_states))
       (send* _disk_states __disk_states)
     (progn
       (if __disk_states (setq _disk_states (car __disk_states)))
       _disk_states)))
  (:network_card_state
   (&rest __network_card_state)
   (if (keywordp (car __network_card_state))
       (send* _network_card_state __network_card_state)
     (progn
       (if __network_card_state (setq _network_card_state (car __network_card_state)))
       _network_card_state)))
  (:serialization-length
   ()
   (+
    ;; int32 _cpu_count
    4
    ;; float64 _cpu_usage
    8
    ;; int32 _cpu_load_1min
    4
    ;; int32 _cpu_load_5min
    4
    ;; int32 _cpu_load_15min
    4
    ;; int32 _process_count
    4
    ;; float32 _mem_total
    4
    ;; float32 _mem_free
    4
    ;; float32 _mem_used_percent
    4
    ;; dg_msgs/DiskState[] _disk_states
    (apply #'+ (send-all _disk_states :serialization-length)) 4
    ;; dg_msgs/NetworkCardState[] _network_card_state
    (apply #'+ (send-all _network_card_state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cpu_count
       (write-long _cpu_count s)
     ;; float64 _cpu_usage
       (sys::poke _cpu_usage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _cpu_load_1min
       (write-long _cpu_load_1min s)
     ;; int32 _cpu_load_5min
       (write-long _cpu_load_5min s)
     ;; int32 _cpu_load_15min
       (write-long _cpu_load_15min s)
     ;; int32 _process_count
       (write-long _process_count s)
     ;; float32 _mem_total
       (sys::poke _mem_total (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mem_free
       (sys::poke _mem_free (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mem_used_percent
       (sys::poke _mem_used_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dg_msgs/DiskState[] _disk_states
     (write-long (length _disk_states) s)
     (dolist (elem _disk_states)
       (send elem :serialize s)
       )
     ;; dg_msgs/NetworkCardState[] _network_card_state
     (write-long (length _network_card_state) s)
     (dolist (elem _network_card_state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cpu_count
     (setq _cpu_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _cpu_usage
     (setq _cpu_usage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _cpu_load_1min
     (setq _cpu_load_1min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cpu_load_5min
     (setq _cpu_load_5min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cpu_load_15min
     (setq _cpu_load_15min (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _process_count
     (setq _process_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _mem_total
     (setq _mem_total (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mem_free
     (setq _mem_free (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mem_used_percent
     (setq _mem_used_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dg_msgs/DiskState[] _disk_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _disk_states (let (r) (dotimes (i n) (push (instance dg_msgs::DiskState :init) r)) r))
     (dolist (elem- _disk_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dg_msgs/NetworkCardState[] _network_card_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _network_card_state (let (r) (dotimes (i n) (push (instance dg_msgs::NetworkCardState :init) r)) r))
     (dolist (elem- _network_card_state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dg_msgs::CPUMemNetState :md5sum-) "559499aa6a41a1eeb7002f1b884a4b82")
(setf (get dg_msgs::CPUMemNetState :datatype-) "dg_msgs/CPUMemNetState")
(setf (get dg_msgs::CPUMemNetState :definition-)
      "# CPU                            # /proc/stat
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
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
================================================================================
MSG: dg_msgs/NetworkCardState
# 网卡状态
string network_card_name        # 网卡名
string ip_address               # IP地址IPv4
float32 net_upload              # 网卡上传速度 KB/s
float32 net_download            # 网卡下载速度 KB/s

dg_msgs/MonitorState state_info         # 状态信息
")



(provide :dg_msgs/CPUMemNetState "559499aa6a41a1eeb7002f1b884a4b82")


