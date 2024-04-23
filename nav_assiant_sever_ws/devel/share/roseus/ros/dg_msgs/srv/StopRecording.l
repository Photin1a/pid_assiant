;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::StopRecording)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'StopRecording (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::STOPRECORDING")
  (make-package "DG_MSGS::STOPRECORDING"))
(unless (find-package "DG_MSGS::STOPRECORDINGREQUEST")
  (make-package "DG_MSGS::STOPRECORDINGREQUEST"))
(unless (find-package "DG_MSGS::STOPRECORDINGRESPONSE")
  (make-package "DG_MSGS::STOPRECORDINGRESPONSE"))

(in-package "ROS")



(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass dg_msgs::StopRecordingRequest
  :super ros::object
  :slots (_number ))

(defmethod dg_msgs::StopRecordingRequest
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

(defclass dg_msgs::StopRecordingResponse
  :super ros::object
  :slots (_result _trajectory ))

(defmethod dg_msgs::StopRecordingResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _trajectory __trajectory)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; trajectory_msgs/JointTrajectoryPoint[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; trajectory_msgs/JointTrajectoryPoint[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; trajectory_msgs/JointTrajectoryPoint[] _trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory (let (r) (dotimes (i n) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass dg_msgs::StopRecording
  :super ros::object
  :slots ())

(setf (get dg_msgs::StopRecording :md5sum-) "7fc6f9833a3bb944adf806dfe5ac2a3b")
(setf (get dg_msgs::StopRecording :datatype-) "dg_msgs/StopRecording")
(setf (get dg_msgs::StopRecording :request) dg_msgs::StopRecordingRequest)
(setf (get dg_msgs::StopRecording :response) dg_msgs::StopRecordingResponse)

(defmethod dg_msgs::StopRecordingRequest
  (:response () (instance dg_msgs::StopRecordingResponse :init)))

(setf (get dg_msgs::StopRecordingRequest :md5sum-) "7fc6f9833a3bb944adf806dfe5ac2a3b")
(setf (get dg_msgs::StopRecordingRequest :datatype-) "dg_msgs/StopRecordingRequest")
(setf (get dg_msgs::StopRecordingRequest :definition-)
      "string number       # 机械臂编号
---
int32 result        # 0: 成功  非0：失败
trajectory_msgs/JointTrajectoryPoint[] trajectory      # 机械臂轨迹


================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")

(setf (get dg_msgs::StopRecordingResponse :md5sum-) "7fc6f9833a3bb944adf806dfe5ac2a3b")
(setf (get dg_msgs::StopRecordingResponse :datatype-) "dg_msgs/StopRecordingResponse")
(setf (get dg_msgs::StopRecordingResponse :definition-)
      "string number       # 机械臂编号
---
int32 result        # 0: 成功  非0：失败
trajectory_msgs/JointTrajectoryPoint[] trajectory      # 机械臂轨迹


================================================================================
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start
")



(provide :dg_msgs/StopRecording "7fc6f9833a3bb944adf806dfe5ac2a3b")


