;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::GeneralHardwareAndNodeState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'GeneralHardwareAndNodeState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GENERALHARDWAREANDNODESTATE")
  (make-package "DG_MSGS::GENERALHARDWAREANDNODESTATE"))

(in-package "ROS")
;;//! \htmlinclude GeneralHardwareAndNodeState.msg.html


(defclass dg_msgs::GeneralHardwareAndNodeState
  :super ros::object
  :slots (_name _state_info ))

(defmethod dg_msgs::GeneralHardwareAndNodeState
  (:init
   (&key
    ((:name __name) "")
    ((:state_info __state_info) (instance dg_msgs::MonitorState :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _state_info __state_info)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
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
    ;; string _name
    4 (length _name)
    ;; dg_msgs/MonitorState _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; dg_msgs/MonitorState _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/MonitorState _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(setf (get dg_msgs::GeneralHardwareAndNodeState :md5sum-) "8286b537435a2ee37a9de658f76fd67d")
(setf (get dg_msgs::GeneralHardwareAndNodeState :datatype-) "dg_msgs/GeneralHardwareAndNodeState")
(setf (get dg_msgs::GeneralHardwareAndNodeState :definition-)
      "# 通用的状态信息
string name                 # 对象名

dg_msgs/MonitorState state_info         # 状态信息
================================================================================
MSG: dg_msgs/MonitorState
# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
")



(provide :dg_msgs/GeneralHardwareAndNodeState "8286b537435a2ee37a9de658f76fd67d")


