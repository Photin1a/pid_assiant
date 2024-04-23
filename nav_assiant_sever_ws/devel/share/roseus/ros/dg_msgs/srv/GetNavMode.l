;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::GetNavMode)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'GetNavMode (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::GETNAVMODE")
  (make-package "DG_MSGS::GETNAVMODE"))
(unless (find-package "DG_MSGS::GETNAVMODEREQUEST")
  (make-package "DG_MSGS::GETNAVMODEREQUEST"))
(unless (find-package "DG_MSGS::GETNAVMODERESPONSE")
  (make-package "DG_MSGS::GETNAVMODERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::GetNavModeRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::GetNavModeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dg_msgs::GetNavModeResponse
  :super ros::object
  :slots (_nav_mode ))

(defmethod dg_msgs::GetNavModeResponse
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

(defclass dg_msgs::GetNavMode
  :super ros::object
  :slots ())

(setf (get dg_msgs::GetNavMode :md5sum-) "6da4714a9065b59db72a6e63fec004bb")
(setf (get dg_msgs::GetNavMode :datatype-) "dg_msgs/GetNavMode")
(setf (get dg_msgs::GetNavMode :request) dg_msgs::GetNavModeRequest)
(setf (get dg_msgs::GetNavMode :response) dg_msgs::GetNavModeResponse)

(defmethod dg_msgs::GetNavModeRequest
  (:response () (instance dg_msgs::GetNavModeResponse :init)))

(setf (get dg_msgs::GetNavModeRequest :md5sum-) "6da4714a9065b59db72a6e63fec004bb")
(setf (get dg_msgs::GetNavModeRequest :datatype-) "dg_msgs/GetNavModeRequest")
(setf (get dg_msgs::GetNavModeRequest :definition-)
      "---
int32 nav_mode

")

(setf (get dg_msgs::GetNavModeResponse :md5sum-) "6da4714a9065b59db72a6e63fec004bb")
(setf (get dg_msgs::GetNavModeResponse :datatype-) "dg_msgs/GetNavModeResponse")
(setf (get dg_msgs::GetNavModeResponse :definition-)
      "---
int32 nav_mode

")



(provide :dg_msgs/GetNavMode "6da4714a9065b59db72a6e63fec004bb")


