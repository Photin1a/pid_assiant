;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmEnable)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmEnable (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMENABLE")
  (make-package "DG_MSGS::ROBOTARMENABLE"))
(unless (find-package "DG_MSGS::ROBOTARMENABLEREQUEST")
  (make-package "DG_MSGS::ROBOTARMENABLEREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMENABLERESPONSE")
  (make-package "DG_MSGS::ROBOTARMENABLERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmEnableRequest
  :super ros::object
  :slots (_number _enable ))

(defmethod dg_msgs::RobotArmEnableRequest
  (:init
   (&key
    ((:number __number) "")
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _enable __enable)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::RobotArmEnableResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::RobotArmEnableResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::RobotArmEnable
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmEnable :md5sum-) "41636440c4d7f34665aaa86499c20abd")
(setf (get dg_msgs::RobotArmEnable :datatype-) "dg_msgs/RobotArmEnable")
(setf (get dg_msgs::RobotArmEnable :request) dg_msgs::RobotArmEnableRequest)
(setf (get dg_msgs::RobotArmEnable :response) dg_msgs::RobotArmEnableResponse)

(defmethod dg_msgs::RobotArmEnableRequest
  (:response () (instance dg_msgs::RobotArmEnableResponse :init)))

(setf (get dg_msgs::RobotArmEnableRequest :md5sum-) "41636440c4d7f34665aaa86499c20abd")
(setf (get dg_msgs::RobotArmEnableRequest :datatype-) "dg_msgs/RobotArmEnableRequest")
(setf (get dg_msgs::RobotArmEnableRequest :definition-)
      "string number       # 设备编码
bool enable       # true：上使能    false：下使能
---
int32 result        # 0: 成功  非0：失败

")

(setf (get dg_msgs::RobotArmEnableResponse :md5sum-) "41636440c4d7f34665aaa86499c20abd")
(setf (get dg_msgs::RobotArmEnableResponse :datatype-) "dg_msgs/RobotArmEnableResponse")
(setf (get dg_msgs::RobotArmEnableResponse :definition-)
      "string number       # 设备编码
bool enable       # true：上使能    false：下使能
---
int32 result        # 0: 成功  非0：失败

")



(provide :dg_msgs/RobotArmEnable "41636440c4d7f34665aaa86499c20abd")


