;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmHomeCheck)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmHomeCheck (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMHOMECHECK")
  (make-package "DG_MSGS::ROBOTARMHOMECHECK"))
(unless (find-package "DG_MSGS::ROBOTARMHOMECHECKREQUEST")
  (make-package "DG_MSGS::ROBOTARMHOMECHECKREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMHOMECHECKRESPONSE")
  (make-package "DG_MSGS::ROBOTARMHOMECHECKRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmHomeCheckRequest
  :super ros::object
  :slots (_number ))

(defmethod dg_msgs::RobotArmHomeCheckRequest
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

(defclass dg_msgs::RobotArmHomeCheckResponse
  :super ros::object
  :slots (_ret ))

(defmethod dg_msgs::RobotArmHomeCheckResponse
  (:init
   (&key
    ((:ret __ret) 0)
    )
   (send-super :init)
   (setq _ret (round __ret))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; int32 _ret
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ret
       (write-long _ret s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::RobotArmHomeCheck
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmHomeCheck :md5sum-) "629ce3f7e5bc2f333e9af520c070ef5c")
(setf (get dg_msgs::RobotArmHomeCheck :datatype-) "dg_msgs/RobotArmHomeCheck")
(setf (get dg_msgs::RobotArmHomeCheck :request) dg_msgs::RobotArmHomeCheckRequest)
(setf (get dg_msgs::RobotArmHomeCheck :response) dg_msgs::RobotArmHomeCheckResponse)

(defmethod dg_msgs::RobotArmHomeCheckRequest
  (:response () (instance dg_msgs::RobotArmHomeCheckResponse :init)))

(setf (get dg_msgs::RobotArmHomeCheckRequest :md5sum-) "629ce3f7e5bc2f333e9af520c070ef5c")
(setf (get dg_msgs::RobotArmHomeCheckRequest :datatype-) "dg_msgs/RobotArmHomeCheckRequest")
(setf (get dg_msgs::RobotArmHomeCheckRequest :definition-)
      "string number      # 设备组编号
---
int32 ret          #0表示在Home初始位置
")

(setf (get dg_msgs::RobotArmHomeCheckResponse :md5sum-) "629ce3f7e5bc2f333e9af520c070ef5c")
(setf (get dg_msgs::RobotArmHomeCheckResponse :datatype-) "dg_msgs/RobotArmHomeCheckResponse")
(setf (get dg_msgs::RobotArmHomeCheckResponse :definition-)
      "string number      # 设备组编号
---
int32 ret          #0表示在Home初始位置
")



(provide :dg_msgs/RobotArmHomeCheck "629ce3f7e5bc2f333e9af520c070ef5c")


