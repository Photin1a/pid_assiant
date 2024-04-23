;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::SetNavMode)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'SetNavMode (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::SETNAVMODE")
  (make-package "DG_MSGS::SETNAVMODE"))
(unless (find-package "DG_MSGS::SETNAVMODEREQUEST")
  (make-package "DG_MSGS::SETNAVMODEREQUEST"))
(unless (find-package "DG_MSGS::SETNAVMODERESPONSE")
  (make-package "DG_MSGS::SETNAVMODERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::SetNavModeRequest
  :super ros::object
  :slots (_nav_mode ))

(defmethod dg_msgs::SetNavModeRequest
  (:init
   (&key
    ((:nav_mode __nav_mode) 0)
    )
   (send-super :init)
   (setq _nav_mode (round __nav_mode))
   self)
  (:nav_mode
   (&optional __nav_mode)
   (if __nav_mode (setq _nav_mode __nav_mode)) _nav_mode)
  (:serialization-length
   ()
   (+
    ;; int32 _nav_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _nav_mode
       (write-long _nav_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _nav_mode
     (setq _nav_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::SetNavModeResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::SetNavModeResponse
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

(defclass dg_msgs::SetNavMode
  :super ros::object
  :slots ())

(setf (get dg_msgs::SetNavMode :md5sum-) "5866fc4438ca78f5db31e326c2742d07")
(setf (get dg_msgs::SetNavMode :datatype-) "dg_msgs/SetNavMode")
(setf (get dg_msgs::SetNavMode :request) dg_msgs::SetNavModeRequest)
(setf (get dg_msgs::SetNavMode :response) dg_msgs::SetNavModeResponse)

(defmethod dg_msgs::SetNavModeRequest
  (:response () (instance dg_msgs::SetNavModeResponse :init)))

(setf (get dg_msgs::SetNavModeRequest :md5sum-) "5866fc4438ca78f5db31e326c2742d07")
(setf (get dg_msgs::SetNavModeRequest :datatype-) "dg_msgs/SetNavModeRequest")
(setf (get dg_msgs::SetNavModeRequest :definition-)
      "int32 nav_mode      # 导航模式 1：手动模式，通过线速度、角速度控制；2：站点导航
---
int32 result        # 0: 成功  非0：失败
")

(setf (get dg_msgs::SetNavModeResponse :md5sum-) "5866fc4438ca78f5db31e326c2742d07")
(setf (get dg_msgs::SetNavModeResponse :datatype-) "dg_msgs/SetNavModeResponse")
(setf (get dg_msgs::SetNavModeResponse :definition-)
      "int32 nav_mode      # 导航模式 1：手动模式，通过线速度、角速度控制；2：站点导航
---
int32 result        # 0: 成功  非0：失败
")



(provide :dg_msgs/SetNavMode "5866fc4438ca78f5db31e326c2742d07")


