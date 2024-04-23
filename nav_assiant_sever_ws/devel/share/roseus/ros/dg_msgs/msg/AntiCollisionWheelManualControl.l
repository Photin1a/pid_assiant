;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::AntiCollisionWheelManualControl)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'AntiCollisionWheelManualControl (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ANTICOLLISIONWHEELMANUALCONTROL")
  (make-package "DG_MSGS::ANTICOLLISIONWHEELMANUALCONTROL"))

(in-package "ROS")
;;//! \htmlinclude AntiCollisionWheelManualControl.msg.html


(defclass dg_msgs::AntiCollisionWheelManualControl
  :super ros::object
  :slots (_wheel_name _operation ))

(defmethod dg_msgs::AntiCollisionWheelManualControl
  (:init
   (&key
    ((:wheel_name __wheel_name) "")
    ((:operation __operation) "")
    )
   (send-super :init)
   (setq _wheel_name (string __wheel_name))
   (setq _operation (string __operation))
   self)
  (:wheel_name
   (&optional __wheel_name)
   (if __wheel_name (setq _wheel_name __wheel_name)) _wheel_name)
  (:operation
   (&optional __operation)
   (if __operation (setq _operation __operation)) _operation)
  (:serialization-length
   ()
   (+
    ;; string _wheel_name
    4 (length _wheel_name)
    ;; string _operation
    4 (length _operation)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wheel_name
       (write-long (length _wheel_name) s) (princ _wheel_name s)
     ;; string _operation
       (write-long (length _operation) s) (princ _operation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wheel_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wheel_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _operation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::AntiCollisionWheelManualControl :md5sum-) "ebd1a681399214fc953fcd354c838a59")
(setf (get dg_msgs::AntiCollisionWheelManualControl :datatype-) "dg_msgs/AntiCollisionWheelManualControl")
(setf (get dg_msgs::AntiCollisionWheelManualControl :definition-)
      "# 防撞轮手动控制
string wheel_name       # 防撞轮名
string operation        # 操作：extend 伸出；insert 深入；roll 滚动；zero 回零
")



(provide :dg_msgs/AntiCollisionWheelManualControl "ebd1a681399214fc953fcd354c838a59")


