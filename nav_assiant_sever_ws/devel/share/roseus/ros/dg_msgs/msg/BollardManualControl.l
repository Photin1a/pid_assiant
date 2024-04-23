;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::BollardManualControl)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'BollardManualControl (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::BOLLARDMANUALCONTROL")
  (make-package "DG_MSGS::BOLLARDMANUALCONTROL"))

(in-package "ROS")
;;//! \htmlinclude BollardManualControl.msg.html


(defclass dg_msgs::BollardManualControl
  :super ros::object
  :slots (_number _operation ))

(defmethod dg_msgs::BollardManualControl
  (:init
   (&key
    ((:number __number) "")
    ((:operation __operation) "")
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _operation (string __operation))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; string _operation
    4 (length _operation)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; string _operation
       (write-long (length _operation) s) (princ _operation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _operation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::BollardManualControl :md5sum-) "ebc26c1ef4bd71b1e5ffe698e4b6a4f9")
(setf (get dg_msgs::BollardManualControl :datatype-) "dg_msgs/BollardManualControl")
(setf (get dg_msgs::BollardManualControl :definition-)
      "# 手动控制升降柱的消息
string number           # 设备组编号
string operation        # 停止stop, 上升rise, 下降desc, 如果不填写就是停止
")



(provide :dg_msgs/BollardManualControl "ebc26c1ef4bd71b1e5ffe698e4b6a4f9")


