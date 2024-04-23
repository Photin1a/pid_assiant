;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmSpeed)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmSpeed (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMSPEED")
  (make-package "DG_MSGS::ROBOTARMSPEED"))
(unless (find-package "DG_MSGS::ROBOTARMSPEEDREQUEST")
  (make-package "DG_MSGS::ROBOTARMSPEEDREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMSPEEDRESPONSE")
  (make-package "DG_MSGS::ROBOTARMSPEEDRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmSpeedRequest
  :super ros::object
  :slots (_number _speed ))

(defmethod dg_msgs::RobotArmSpeedRequest
  (:init
   (&key
    ((:number __number) "")
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _speed (float __speed))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::RobotArmSpeedResponse
  :super ros::object
  :slots (_result _err_msg ))

(defmethod dg_msgs::RobotArmSpeedResponse
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

(defclass dg_msgs::RobotArmSpeed
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmSpeed :md5sum-) "8f2a3742ee2fc517393c2bd0f5bce150")
(setf (get dg_msgs::RobotArmSpeed :datatype-) "dg_msgs/RobotArmSpeed")
(setf (get dg_msgs::RobotArmSpeed :request) dg_msgs::RobotArmSpeedRequest)
(setf (get dg_msgs::RobotArmSpeed :response) dg_msgs::RobotArmSpeedResponse)

(defmethod dg_msgs::RobotArmSpeedRequest
  (:response () (instance dg_msgs::RobotArmSpeedResponse :init)))

(setf (get dg_msgs::RobotArmSpeedRequest :md5sum-) "8f2a3742ee2fc517393c2bd0f5bce150")
(setf (get dg_msgs::RobotArmSpeedRequest :datatype-) "dg_msgs/RobotArmSpeedRequest")
(setf (get dg_msgs::RobotArmSpeedRequest :definition-)
      "string number       # 设备编码
float32 speed       # 机械臂速度
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息
")

(setf (get dg_msgs::RobotArmSpeedResponse :md5sum-) "8f2a3742ee2fc517393c2bd0f5bce150")
(setf (get dg_msgs::RobotArmSpeedResponse :datatype-) "dg_msgs/RobotArmSpeedResponse")
(setf (get dg_msgs::RobotArmSpeedResponse :definition-)
      "string number       # 设备编码
float32 speed       # 机械臂速度
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息
")



(provide :dg_msgs/RobotArmSpeed "8f2a3742ee2fc517393c2bd0f5bce150")


