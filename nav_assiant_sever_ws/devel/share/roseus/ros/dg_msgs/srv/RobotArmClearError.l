;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmClearError)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmClearError (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMCLEARERROR")
  (make-package "DG_MSGS::ROBOTARMCLEARERROR"))
(unless (find-package "DG_MSGS::ROBOTARMCLEARERRORREQUEST")
  (make-package "DG_MSGS::ROBOTARMCLEARERRORREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMCLEARERRORRESPONSE")
  (make-package "DG_MSGS::ROBOTARMCLEARERRORRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmClearErrorRequest
  :super ros::object
  :slots (_number ))

(defmethod dg_msgs::RobotArmClearErrorRequest
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

(defclass dg_msgs::RobotArmClearErrorResponse
  :super ros::object
  :slots (_result _err_msg ))

(defmethod dg_msgs::RobotArmClearErrorResponse
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

(defclass dg_msgs::RobotArmClearError
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmClearError :md5sum-) "30dd77b2b7250d51d2b5b47933ff7787")
(setf (get dg_msgs::RobotArmClearError :datatype-) "dg_msgs/RobotArmClearError")
(setf (get dg_msgs::RobotArmClearError :request) dg_msgs::RobotArmClearErrorRequest)
(setf (get dg_msgs::RobotArmClearError :response) dg_msgs::RobotArmClearErrorResponse)

(defmethod dg_msgs::RobotArmClearErrorRequest
  (:response () (instance dg_msgs::RobotArmClearErrorResponse :init)))

(setf (get dg_msgs::RobotArmClearErrorRequest :md5sum-) "30dd77b2b7250d51d2b5b47933ff7787")
(setf (get dg_msgs::RobotArmClearErrorRequest :datatype-) "dg_msgs/RobotArmClearErrorRequest")
(setf (get dg_msgs::RobotArmClearErrorRequest :definition-)
      "string number       # 设备编码
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息
")

(setf (get dg_msgs::RobotArmClearErrorResponse :md5sum-) "30dd77b2b7250d51d2b5b47933ff7787")
(setf (get dg_msgs::RobotArmClearErrorResponse :datatype-) "dg_msgs/RobotArmClearErrorResponse")
(setf (get dg_msgs::RobotArmClearErrorResponse :definition-)
      "string number       # 设备编码
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息
")



(provide :dg_msgs/RobotArmClearError "30dd77b2b7250d51d2b5b47933ff7787")


