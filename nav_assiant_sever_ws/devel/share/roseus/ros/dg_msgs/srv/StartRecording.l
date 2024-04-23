;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::StartRecording)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'StartRecording (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::STARTRECORDING")
  (make-package "DG_MSGS::STARTRECORDING"))
(unless (find-package "DG_MSGS::STARTRECORDINGREQUEST")
  (make-package "DG_MSGS::STARTRECORDINGREQUEST"))
(unless (find-package "DG_MSGS::STARTRECORDINGRESPONSE")
  (make-package "DG_MSGS::STARTRECORDINGRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::StartRecordingRequest
  :super ros::object
  :slots (_number ))

(defmethod dg_msgs::StartRecordingRequest
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

(defclass dg_msgs::StartRecordingResponse
  :super ros::object
  :slots (_result ))

(defmethod dg_msgs::StartRecordingResponse
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

(defclass dg_msgs::StartRecording
  :super ros::object
  :slots ())

(setf (get dg_msgs::StartRecording :md5sum-) "8c9c8e5fc4e6966e27fb0faf053f29e5")
(setf (get dg_msgs::StartRecording :datatype-) "dg_msgs/StartRecording")
(setf (get dg_msgs::StartRecording :request) dg_msgs::StartRecordingRequest)
(setf (get dg_msgs::StartRecording :response) dg_msgs::StartRecordingResponse)

(defmethod dg_msgs::StartRecordingRequest
  (:response () (instance dg_msgs::StartRecordingResponse :init)))

(setf (get dg_msgs::StartRecordingRequest :md5sum-) "8c9c8e5fc4e6966e27fb0faf053f29e5")
(setf (get dg_msgs::StartRecordingRequest :datatype-) "dg_msgs/StartRecordingRequest")
(setf (get dg_msgs::StartRecordingRequest :definition-)
      "string number       # 机械臂编号
---
int32 result        # 0: 成功  非0：失败

")

(setf (get dg_msgs::StartRecordingResponse :md5sum-) "8c9c8e5fc4e6966e27fb0faf053f29e5")
(setf (get dg_msgs::StartRecordingResponse :datatype-) "dg_msgs/StartRecordingResponse")
(setf (get dg_msgs::StartRecordingResponse :definition-)
      "string number       # 机械臂编号
---
int32 result        # 0: 成功  非0：失败

")



(provide :dg_msgs/StartRecording "8c9c8e5fc4e6966e27fb0faf053f29e5")


