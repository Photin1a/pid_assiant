;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::DiskState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'DiskState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::DISKSTATE")
  (make-package "DG_MSGS::DISKSTATE"))

(in-package "ROS")
;;//! \htmlinclude DiskState.msg.html


(defclass dg_msgs::DiskState
  :super ros::object
  :slots (_disk_name _disk_total _disk_used _disk_avail _disk_used_percent _state_info ))

(defmethod dg_msgs::DiskState
  (:init
   (&key
    ((:disk_name __disk_name) "")
    ((:disk_total __disk_total) 0.0)
    ((:disk_used __disk_used) 0.0)
    ((:disk_avail __disk_avail) 0.0)
    ((:disk_used_percent __disk_used_percent) 0.0)
    ((:state_info __state_info) (instance dg_msgs::MonitorState :init))
    )
   (send-super :init)
   (setq _disk_name (string __disk_name))
   (setq _disk_total (float __disk_total))
   (setq _disk_used (float __disk_used))
   (setq _disk_avail (float __disk_avail))
   (setq _disk_used_percent (float __disk_used_percent))
   (setq _state_info __state_info)
   self)
  (:disk_name
   (&optional __disk_name)
   (if __disk_name (setq _disk_name __disk_name)) _disk_name)
  (:disk_total
   (&optional __disk_total)
   (if __disk_total (setq _disk_total __disk_total)) _disk_total)
  (:disk_used
   (&optional __disk_used)
   (if __disk_used (setq _disk_used __disk_used)) _disk_used)
  (:disk_avail
   (&optional __disk_avail)
   (if __disk_avail (setq _disk_avail __disk_avail)) _disk_avail)
  (:disk_used_percent
   (&optional __disk_used_percent)
   (if __disk_used_percent (setq _disk_used_percent __disk_used_percent)) _disk_used_percent)
  (:state_info
   (&rest __state_info)
   (if (keywordp (car __state_info))
       (send* _state_info __state_info)
     (progn
       (if __state_info (setq _state_info (car __state_info)))
       _state_info)))
  (:serialization-length
   ()
   (+
    ;; string _disk_name
    4 (length _disk_name)
    ;; float32 _disk_total
    4
    ;; float32 _disk_used
    4
    ;; float32 _disk_avail
    4
    ;; float32 _disk_used_percent
    4
    ;; dg_msgs/MonitorState _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _disk_name
       (write-long (length _disk_name) s) (princ _disk_name s)
     ;; float32 _disk_total
       (sys::poke _disk_total (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _disk_used
       (sys::poke _disk_used (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _disk_avail
       (sys::poke _disk_avail (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _disk_used_percent
       (sys::poke _disk_used_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dg_msgs/MonitorState _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _disk_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _disk_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _disk_total
     (setq _disk_total (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _disk_used
     (setq _disk_used (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _disk_avail
     (setq _disk_avail (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _disk_used_percent
     (setq _disk_used_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dg_msgs/MonitorState _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(setf (get dg_msgs::DiskState :md5sum-) "0ae89d9226df323af7a5a7808953730a")
(setf (get dg_msgs::DiskState :datatype-) "dg_msgs/DiskState")
(setf (get dg_msgs::DiskState :definition-)
      "# 硬盘状态
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
")



(provide :dg_msgs/DiskState "0ae89d9226df323af7a5a7808953730a")


