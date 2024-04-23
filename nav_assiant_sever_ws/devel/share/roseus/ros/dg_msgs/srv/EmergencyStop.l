;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::EmergencyStop)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'EmergencyStop (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::EMERGENCYSTOP")
  (make-package "DG_MSGS::EMERGENCYSTOP"))
(unless (find-package "DG_MSGS::EMERGENCYSTOPREQUEST")
  (make-package "DG_MSGS::EMERGENCYSTOPREQUEST"))
(unless (find-package "DG_MSGS::EMERGENCYSTOPRESPONSE")
  (make-package "DG_MSGS::EMERGENCYSTOPRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::EmergencyStopRequest
  :super ros::object
  :slots (_stop ))

(defmethod dg_msgs::EmergencyStopRequest
  (:init
   (&key
    ((:stop __stop) nil)
    )
   (send-super :init)
   (setq _stop __stop)
   self)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; bool _stop
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop
       (if _stop (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop
     (setq _stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::EmergencyStopResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::EmergencyStopResponse
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

(defclass dg_msgs::EmergencyStop
  :super ros::object
  :slots ())

(setf (get dg_msgs::EmergencyStop :md5sum-) "565099d6fc107521bc92372f45b2bb01")
(setf (get dg_msgs::EmergencyStop :datatype-) "dg_msgs/EmergencyStop")
(setf (get dg_msgs::EmergencyStop :request) dg_msgs::EmergencyStopRequest)
(setf (get dg_msgs::EmergencyStop :response) dg_msgs::EmergencyStopResponse)

(defmethod dg_msgs::EmergencyStopRequest
  (:response () (instance dg_msgs::EmergencyStopResponse :init)))

(setf (get dg_msgs::EmergencyStopRequest :md5sum-) "565099d6fc107521bc92372f45b2bb01")
(setf (get dg_msgs::EmergencyStopRequest :datatype-) "dg_msgs/EmergencyStopRequest")
(setf (get dg_msgs::EmergencyStopRequest :definition-)
      "bool stop       # true：急停    false：清除急停
---
int32 result    # 0: 成功  非0：失败

")

(setf (get dg_msgs::EmergencyStopResponse :md5sum-) "565099d6fc107521bc92372f45b2bb01")
(setf (get dg_msgs::EmergencyStopResponse :datatype-) "dg_msgs/EmergencyStopResponse")
(setf (get dg_msgs::EmergencyStopResponse :definition-)
      "bool stop       # true：急停    false：清除急停
---
int32 result    # 0: 成功  非0：失败

")



(provide :dg_msgs/EmergencyStop "565099d6fc107521bc92372f45b2bb01")


