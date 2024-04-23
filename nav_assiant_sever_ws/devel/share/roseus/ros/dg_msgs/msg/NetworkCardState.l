;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::NetworkCardState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'NetworkCardState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::NETWORKCARDSTATE")
  (make-package "DG_MSGS::NETWORKCARDSTATE"))

(in-package "ROS")
;;//! \htmlinclude NetworkCardState.msg.html


(defclass dg_msgs::NetworkCardState
  :super ros::object
  :slots (_network_card_name _ip_address _net_upload _net_download _state_info ))

(defmethod dg_msgs::NetworkCardState
  (:init
   (&key
    ((:network_card_name __network_card_name) "")
    ((:ip_address __ip_address) "")
    ((:net_upload __net_upload) 0.0)
    ((:net_download __net_download) 0.0)
    ((:state_info __state_info) (instance dg_msgs::MonitorState :init))
    )
   (send-super :init)
   (setq _network_card_name (string __network_card_name))
   (setq _ip_address (string __ip_address))
   (setq _net_upload (float __net_upload))
   (setq _net_download (float __net_download))
   (setq _state_info __state_info)
   self)
  (:network_card_name
   (&optional __network_card_name)
   (if __network_card_name (setq _network_card_name __network_card_name)) _network_card_name)
  (:ip_address
   (&optional __ip_address)
   (if __ip_address (setq _ip_address __ip_address)) _ip_address)
  (:net_upload
   (&optional __net_upload)
   (if __net_upload (setq _net_upload __net_upload)) _net_upload)
  (:net_download
   (&optional __net_download)
   (if __net_download (setq _net_download __net_download)) _net_download)
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
    ;; string _network_card_name
    4 (length _network_card_name)
    ;; string _ip_address
    4 (length _ip_address)
    ;; float32 _net_upload
    4
    ;; float32 _net_download
    4
    ;; dg_msgs/MonitorState _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _network_card_name
       (write-long (length _network_card_name) s) (princ _network_card_name s)
     ;; string _ip_address
       (write-long (length _ip_address) s) (princ _ip_address s)
     ;; float32 _net_upload
       (sys::poke _net_upload (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _net_download
       (sys::poke _net_download (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dg_msgs/MonitorState _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _network_card_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _network_card_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ip_address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip_address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _net_upload
     (setq _net_upload (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _net_download
     (setq _net_download (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dg_msgs/MonitorState _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(setf (get dg_msgs::NetworkCardState :md5sum-) "52de5677eb4029ed135c560d8dca6c4f")
(setf (get dg_msgs::NetworkCardState :datatype-) "dg_msgs/NetworkCardState")
(setf (get dg_msgs::NetworkCardState :definition-)
      "# 网卡状态
string network_card_name        # 网卡名
string ip_address               # IP地址IPv4
float32 net_upload              # 网卡上传速度 KB/s
float32 net_download            # 网卡下载速度 KB/s

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
")



(provide :dg_msgs/NetworkCardState "52de5677eb4029ed135c560d8dca6c4f")


