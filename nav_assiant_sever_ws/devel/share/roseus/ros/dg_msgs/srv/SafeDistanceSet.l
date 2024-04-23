;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::SafeDistanceSet)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'SafeDistanceSet (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::SAFEDISTANCESET")
  (make-package "DG_MSGS::SAFEDISTANCESET"))
(unless (find-package "DG_MSGS::SAFEDISTANCESETREQUEST")
  (make-package "DG_MSGS::SAFEDISTANCESETREQUEST"))
(unless (find-package "DG_MSGS::SAFEDISTANCESETRESPONSE")
  (make-package "DG_MSGS::SAFEDISTANCESETRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::SafeDistanceSetRequest
  :super ros::object
  :slots (_number _dist ))

(defmethod dg_msgs::SafeDistanceSetRequest
  (:init
   (&key
    ((:number __number) "")
    ((:dist __dist) 0.0)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _dist (float __dist))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:dist
   (&optional __dist)
   (if __dist (setq _dist __dist)) _dist)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; float32 _dist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; float32 _dist
       (sys::poke _dist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _dist
     (setq _dist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::SafeDistanceSetResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::SafeDistanceSetResponse
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

(defclass dg_msgs::SafeDistanceSet
  :super ros::object
  :slots ())

(setf (get dg_msgs::SafeDistanceSet :md5sum-) "9307e5f93fb0e682667be999235986b8")
(setf (get dg_msgs::SafeDistanceSet :datatype-) "dg_msgs/SafeDistanceSet")
(setf (get dg_msgs::SafeDistanceSet :request) dg_msgs::SafeDistanceSetRequest)
(setf (get dg_msgs::SafeDistanceSet :response) dg_msgs::SafeDistanceSetResponse)

(defmethod dg_msgs::SafeDistanceSetRequest
  (:response () (instance dg_msgs::SafeDistanceSetResponse :init)))

(setf (get dg_msgs::SafeDistanceSetRequest :md5sum-) "9307e5f93fb0e682667be999235986b8")
(setf (get dg_msgs::SafeDistanceSetRequest :datatype-) "dg_msgs/SafeDistanceSetRequest")
(setf (get dg_msgs::SafeDistanceSetRequest :definition-)
      "string number       # 设备编码
float32 dist       # 机械臂和碰撞物的安全距离，单位米
---
int32 result        # 0: 成功  非0：失败
")

(setf (get dg_msgs::SafeDistanceSetResponse :md5sum-) "9307e5f93fb0e682667be999235986b8")
(setf (get dg_msgs::SafeDistanceSetResponse :datatype-) "dg_msgs/SafeDistanceSetResponse")
(setf (get dg_msgs::SafeDistanceSetResponse :definition-)
      "string number       # 设备编码
float32 dist       # 机械臂和碰撞物的安全距离，单位米
---
int32 result        # 0: 成功  非0：失败
")



(provide :dg_msgs/SafeDistanceSet "9307e5f93fb0e682667be999235986b8")


