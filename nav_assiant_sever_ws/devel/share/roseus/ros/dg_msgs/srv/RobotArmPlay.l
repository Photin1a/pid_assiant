;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmPlay)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmPlay (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMPLAY")
  (make-package "DG_MSGS::ROBOTARMPLAY"))
(unless (find-package "DG_MSGS::ROBOTARMPLAYREQUEST")
  (make-package "DG_MSGS::ROBOTARMPLAYREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMPLAYRESPONSE")
  (make-package "DG_MSGS::ROBOTARMPLAYRESPONSE"))

(in-package "ROS")

(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))




(defclass dg_msgs::RobotArmPlayRequest
  :super ros::object
  :slots (_number _trajectory ))

(defmethod dg_msgs::RobotArmPlayRequest
  (:init
   (&key
    ((:number __number) "")
    ((:trajectory __trajectory) (let (r) (dotimes (i 0) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _trajectory __trajectory)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
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
    ;; string _number
    4 (length _number)
    ;; trajectory_msgs/JointTrajectoryPoint[] _trajectory
    (apply #'+ (send-all _trajectory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; trajectory_msgs/JointTrajectoryPoint[] _trajectory
     (write-long (length _trajectory) s)
     (dolist (elem _trajectory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(defclass dg_msgs::RobotArmPlayResponse
  :super ros::object
  :slots (_result _err_msg ))

(defmethod dg_msgs::RobotArmPlayResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:err_msg __err_msg) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _err_msg (string __err_msg))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _err_msg
    4 (length _err_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _err_msg
       (write-long (length _err_msg) s) (princ _err_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _err_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _err_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmPlay
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmPlay :md5sum-) "864ce7ba8c1285b7aac87a4b60c5a93e")
(setf (get dg_msgs::RobotArmPlay :datatype-) "dg_msgs/RobotArmPlay")
(setf (get dg_msgs::RobotArmPlay :request) dg_msgs::RobotArmPlayRequest)
(setf (get dg_msgs::RobotArmPlay :response) dg_msgs::RobotArmPlayResponse)

(defmethod dg_msgs::RobotArmPlayRequest
  (:response () (instance dg_msgs::RobotArmPlayResponse :init)))

(setf (get dg_msgs::RobotArmPlayRequest :md5sum-) "864ce7ba8c1285b7aac87a4b60c5a93e")
(setf (get dg_msgs::RobotArmPlayRequest :datatype-) "dg_msgs/RobotArmPlayRequest")
(setf (get dg_msgs::RobotArmPlayRequest :definition-)
      "string number     # 机械臂编号
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
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息
")

(setf (get dg_msgs::RobotArmPlayResponse :md5sum-) "864ce7ba8c1285b7aac87a4b60c5a93e")
(setf (get dg_msgs::RobotArmPlayResponse :datatype-) "dg_msgs/RobotArmPlayResponse")
(setf (get dg_msgs::RobotArmPlayResponse :definition-)
      "string number     # 机械臂编号
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
---
int32 result        # 0: 成功  非0：失败
string err_msg      # 错误信息
")



(provide :dg_msgs/RobotArmPlay "864ce7ba8c1285b7aac87a4b60c5a93e")


