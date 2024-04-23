;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmStandby)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmStandby (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMSTANDBY")
  (make-package "DG_MSGS::ROBOTARMSTANDBY"))
(unless (find-package "DG_MSGS::ROBOTARMSTANDBYREQUEST")
  (make-package "DG_MSGS::ROBOTARMSTANDBYREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMSTANDBYRESPONSE")
  (make-package "DG_MSGS::ROBOTARMSTANDBYRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmStandbyRequest
  :super ros::object
  :slots (_number ))

(defmethod dg_msgs::RobotArmStandbyRequest
  (:init
   (&key
    ((:number __number) "")
    )
   (send-super :init)
   (setq _number (string __number))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmStandbyResponse
  :super ros::object
  :slots (_result _err_msg ))

(defmethod dg_msgs::RobotArmStandbyResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:err_msg __err_msg) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _err_msg (string __err_msg))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _err_msg
    4 (length _err_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _err_msg
       (write-long (length _err_msg) s) (princ _err_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _err_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _err_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmStandby
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmStandby :md5sum-) "30dd77b2b7250d51d2b5b47933ff7787")
(setf (get dg_msgs::RobotArmStandby :datatype-) "dg_msgs/RobotArmStandby")
(setf (get dg_msgs::RobotArmStandby :request) dg_msgs::RobotArmStandbyRequest)
(setf (get dg_msgs::RobotArmStandby :response) dg_msgs::RobotArmStandbyResponse)

(defmethod dg_msgs::RobotArmStandbyRequest
  (:response () (instance dg_msgs::RobotArmStandbyResponse :init)))

(setf (get dg_msgs::RobotArmStandbyRequest :md5sum-) "30dd77b2b7250d51d2b5b47933ff7787")
(setf (get dg_msgs::RobotArmStandbyRequest :datatype-) "dg_msgs/RobotArmStandbyRequest")
(setf (get dg_msgs::RobotArmStandbyRequest :definition-)
      "string number       # 设备编码
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息

")

(setf (get dg_msgs::RobotArmStandbyResponse :md5sum-) "30dd77b2b7250d51d2b5b47933ff7787")
(setf (get dg_msgs::RobotArmStandbyResponse :datatype-) "dg_msgs/RobotArmStandbyResponse")
(setf (get dg_msgs::RobotArmStandbyResponse :definition-)
      "string number       # 设备编码
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息

")



(provide :dg_msgs/RobotArmStandby "30dd77b2b7250d51d2b5b47933ff7787")


