;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::LiftkitLimitPosition)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'LiftkitLimitPosition (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::LIFTKITLIMITPOSITION")
  (make-package "DG_MSGS::LIFTKITLIMITPOSITION"))
(unless (find-package "DG_MSGS::LIFTKITLIMITPOSITIONREQUEST")
  (make-package "DG_MSGS::LIFTKITLIMITPOSITIONREQUEST"))
(unless (find-package "DG_MSGS::LIFTKITLIMITPOSITIONRESPONSE")
  (make-package "DG_MSGS::LIFTKITLIMITPOSITIONRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::LiftkitLimitPositionRequest
  :super ros::object
  :slots (_limit_min _limit_max ))

(defmethod dg_msgs::LiftkitLimitPositionRequest
  (:init
   (&key
    ((:limit_min __limit_min) 0.0)
    ((:limit_max __limit_max) 0.0)
    )
   (send-super :init)
   (setq _limit_min (float __limit_min))
   (setq _limit_max (float __limit_max))
   self)
  (:limit_min
   (&optional __limit_min)
   (if __limit_min (setq _limit_min __limit_min)) _limit_min)
  (:limit_max
   (&optional __limit_max)
   (if __limit_max (setq _limit_max __limit_max)) _limit_max)
  (:serialization-length
   ()
   (+
    ;; float32 _limit_min
    4
    ;; float32 _limit_max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _limit_min
       (sys::poke _limit_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _limit_max
       (sys::poke _limit_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _limit_min
     (setq _limit_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _limit_max
     (setq _limit_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::LiftkitLimitPositionResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::LiftkitLimitPositionResponse
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

(defclass dg_msgs::LiftkitLimitPosition
  :super ros::object
  :slots ())

(setf (get dg_msgs::LiftkitLimitPosition :md5sum-) "9893256c569fa5e6bf99f99fa5ed8fd0")
(setf (get dg_msgs::LiftkitLimitPosition :datatype-) "dg_msgs/LiftkitLimitPosition")
(setf (get dg_msgs::LiftkitLimitPosition :request) dg_msgs::LiftkitLimitPositionRequest)
(setf (get dg_msgs::LiftkitLimitPosition :response) dg_msgs::LiftkitLimitPositionResponse)

(defmethod dg_msgs::LiftkitLimitPositionRequest
  (:response () (instance dg_msgs::LiftkitLimitPositionResponse :init)))

(setf (get dg_msgs::LiftkitLimitPositionRequest :md5sum-) "9893256c569fa5e6bf99f99fa5ed8fd0")
(setf (get dg_msgs::LiftkitLimitPositionRequest :datatype-) "dg_msgs/LiftkitLimitPositionRequest")
(setf (get dg_msgs::LiftkitLimitPositionRequest :definition-)
      "float32 limit_min
float32 limit_max
---
int32 result        # 0: 成功  非0：失败

")

(setf (get dg_msgs::LiftkitLimitPositionResponse :md5sum-) "9893256c569fa5e6bf99f99fa5ed8fd0")
(setf (get dg_msgs::LiftkitLimitPositionResponse :datatype-) "dg_msgs/LiftkitLimitPositionResponse")
(setf (get dg_msgs::LiftkitLimitPositionResponse :definition-)
      "float32 limit_min
float32 limit_max
---
int32 result        # 0: 成功  非0：失败

")



(provide :dg_msgs/LiftkitLimitPosition "9893256c569fa5e6bf99f99fa5ed8fd0")


