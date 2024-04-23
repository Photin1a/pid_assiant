;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmTeaching)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmTeaching (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMTEACHING")
  (make-package "DG_MSGS::ROBOTARMTEACHING"))
(unless (find-package "DG_MSGS::ROBOTARMTEACHINGREQUEST")
  (make-package "DG_MSGS::ROBOTARMTEACHINGREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMTEACHINGRESPONSE")
  (make-package "DG_MSGS::ROBOTARMTEACHINGRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmTeachingRequest
  :super ros::object
  :slots (_number _teaching ))

(defmethod dg_msgs::RobotArmTeachingRequest
  (:init
   (&key
    ((:number __number) "")
    ((:teaching __teaching) nil)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _teaching __teaching)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:teaching
   (&optional __teaching)
   (if __teaching (setq _teaching __teaching)) _teaching)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; bool _teaching
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; bool _teaching
       (if _teaching (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _teaching
     (setq _teaching (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::RobotArmTeachingResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::RobotArmTeachingResponse
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

(defclass dg_msgs::RobotArmTeaching
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmTeaching :md5sum-) "e98776d51c881f8420639834d3ff8ee3")
(setf (get dg_msgs::RobotArmTeaching :datatype-) "dg_msgs/RobotArmTeaching")
(setf (get dg_msgs::RobotArmTeaching :request) dg_msgs::RobotArmTeachingRequest)
(setf (get dg_msgs::RobotArmTeaching :response) dg_msgs::RobotArmTeachingResponse)

(defmethod dg_msgs::RobotArmTeachingRequest
  (:response () (instance dg_msgs::RobotArmTeachingResponse :init)))

(setf (get dg_msgs::RobotArmTeachingRequest :md5sum-) "e98776d51c881f8420639834d3ff8ee3")
(setf (get dg_msgs::RobotArmTeachingRequest :datatype-) "dg_msgs/RobotArmTeachingRequest")
(setf (get dg_msgs::RobotArmTeachingRequest :definition-)
      "string number       # 设备编码
bool teaching       # true：打开    false：关闭
---
int32 result        # 0: 成功  非0：失败

")

(setf (get dg_msgs::RobotArmTeachingResponse :md5sum-) "e98776d51c881f8420639834d3ff8ee3")
(setf (get dg_msgs::RobotArmTeachingResponse :datatype-) "dg_msgs/RobotArmTeachingResponse")
(setf (get dg_msgs::RobotArmTeachingResponse :definition-)
      "string number       # 设备编码
bool teaching       # true：打开    false：关闭
---
int32 result        # 0: 成功  非0：失败

")



(provide :dg_msgs/RobotArmTeaching "e98776d51c881f8420639834d3ff8ee3")


