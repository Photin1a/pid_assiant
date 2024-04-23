;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::NetworkedDevicesState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'NetworkedDevicesState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::NETWORKEDDEVICESSTATE")
  (make-package "DG_MSGS::NETWORKEDDEVICESSTATE"))

(in-package "ROS")
;;//! \htmlinclude NetworkedDevicesState.msg.html


(defclass dg_msgs::NetworkedDevicesState
  :super ros::object
  :slots (_device_name _ip_address _state_info ))

(defmethod dg_msgs::NetworkedDevicesState
  (:init
   (&key
    ((:device_name __device_name) "")
    ((:ip_address __ip_address) "")
    ((:state_info __state_info) (instance dg_msgs::MonitorState :init))
    )
   (send-super :init)
   (setq _device_name (string __device_name))
   (setq _ip_address (string __ip_address))
   (setq _state_info __state_info)
   self)
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:ip_address
   (&optional __ip_address)
   (if __ip_address (setq _ip_address __ip_address)) _ip_address)
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
    ;; string _device_name
    4 (length _device_name)
    ;; string _ip_address
    4 (length _ip_address)
    ;; dg_msgs/MonitorState _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; string _ip_address
       (write-long (length _ip_address) s) (princ _ip_address s)
     ;; dg_msgs/MonitorState _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip_address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip_address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/MonitorState _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(setf (get dg_msgs::NetworkedDevicesState :md5sum-) "9aa0832958f0e07c49da88632d6eef9a")
(setf (get dg_msgs::NetworkedDevicesState :datatype-) "dg_msgs/NetworkedDevicesState")
(setf (get dg_msgs::NetworkedDevicesState :definition-)
      "# 联网设备状态
string device_name          # 设备名
string ip_address           # 设备地址IPv4

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
")



(provide :dg_msgs/NetworkedDevicesState "9aa0832958f0e07c49da88632d6eef9a")


