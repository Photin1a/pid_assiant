;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CameraPcdFlag)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CameraPcdFlag (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CAMERAPCDFLAG")
  (make-package "DG_MSGS::CAMERAPCDFLAG"))
(unless (find-package "DG_MSGS::CAMERAPCDFLAGREQUEST")
  (make-package "DG_MSGS::CAMERAPCDFLAGREQUEST"))
(unless (find-package "DG_MSGS::CAMERAPCDFLAGRESPONSE")
  (make-package "DG_MSGS::CAMERAPCDFLAGRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::CameraPcdFlagRequest
  :super ros::object
  :slots (_flag ))

(defmethod dg_msgs::CameraPcdFlagRequest
  (:init
   (&key
    ((:flag __flag) nil)
    )
   (send-super :init)
   (setq _flag __flag)
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; bool _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _flag
       (if _flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _flag
     (setq _flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::CameraPcdFlagResponse
  :super ros::object
  :slots (_ret ))

(defmethod dg_msgs::CameraPcdFlagResponse
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

(defclass dg_msgs::CameraPcdFlag
  :super ros::object
  :slots ())

(setf (get dg_msgs::CameraPcdFlag :md5sum-) "da447c1866b277a6644b3e27c876d9c7")
(setf (get dg_msgs::CameraPcdFlag :datatype-) "dg_msgs/CameraPcdFlag")
(setf (get dg_msgs::CameraPcdFlag :request) dg_msgs::CameraPcdFlagRequest)
(setf (get dg_msgs::CameraPcdFlag :response) dg_msgs::CameraPcdFlagResponse)

(defmethod dg_msgs::CameraPcdFlagRequest
  (:response () (instance dg_msgs::CameraPcdFlagResponse :init)))

(setf (get dg_msgs::CameraPcdFlagRequest :md5sum-) "da447c1866b277a6644b3e27c876d9c7")
(setf (get dg_msgs::CameraPcdFlagRequest :datatype-) "dg_msgs/CameraPcdFlagRequest")
(setf (get dg_msgs::CameraPcdFlagRequest :definition-)
      "bool flag #是否打开相机的点云输出接口
---
int32 ret
")

(setf (get dg_msgs::CameraPcdFlagResponse :md5sum-) "da447c1866b277a6644b3e27c876d9c7")
(setf (get dg_msgs::CameraPcdFlagResponse :datatype-) "dg_msgs/CameraPcdFlagResponse")
(setf (get dg_msgs::CameraPcdFlagResponse :definition-)
      "bool flag #是否打开相机的点云输出接口
---
int32 ret
")



(provide :dg_msgs/CameraPcdFlag "da447c1866b277a6644b3e27c876d9c7")


