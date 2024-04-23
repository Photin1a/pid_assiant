;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::MonitorState)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'MonitorState (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::MONITORSTATE")
  (make-package "DG_MSGS::MONITORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MonitorState.msg.html


(defclass dg_msgs::MonitorState
  :super ros::object
  :slots (_error_code _additional_msgs ))

(defmethod dg_msgs::MonitorState
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:additional_msgs __additional_msgs) "")
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _additional_msgs (string __additional_msgs))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:additional_msgs
   (&optional __additional_msgs)
   (if __additional_msgs (setq _additional_msgs __additional_msgs)) _additional_msgs)
  (:serialization-length
   ()
   (+
    ;; int32 _error_code
    4
    ;; string _additional_msgs
    4 (length _additional_msgs)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _additional_msgs
       (write-long (length _additional_msgs) s) (princ _additional_msgs s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _additional_msgs
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _additional_msgs (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::MonitorState :md5sum-) "bda9bd9fb908de41898b36bdcadd650f")
(setf (get dg_msgs::MonitorState :datatype-) "dg_msgs/MonitorState")
(setf (get dg_msgs::MonitorState :definition-)
      "# 监控状态 - 当状态正常时错误码为0
int32 error_code            # 错误码
string additional_msgs       # 附加信息
")



(provide :dg_msgs/MonitorState "bda9bd9fb908de41898b36bdcadd650f")


