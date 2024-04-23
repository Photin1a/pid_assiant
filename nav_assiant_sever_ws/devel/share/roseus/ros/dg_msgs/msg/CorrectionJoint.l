;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CorrectionJoint)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CorrectionJoint (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CORRECTIONJOINT")
  (make-package "DG_MSGS::CORRECTIONJOINT"))

(in-package "ROS")
;;//! \htmlinclude CorrectionJoint.msg.html
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass dg_msgs::CorrectionJoint
  :super ros::object
  :slots (_number _joints ))

(defmethod dg_msgs::CorrectionJoint
  (:init
   (&key
    ((:number __number) "")
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _joints __joints)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; trajectory_msgs/JointTrajectoryPoint[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; trajectory_msgs/JointTrajectoryPoint[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; trajectory_msgs/JointTrajectoryPoint[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dg_msgs::CorrectionJoint :md5sum-) "84713a8da3c3c07def323d8336d70de0")
(setf (get dg_msgs::CorrectionJoint :datatype-) "dg_msgs/CorrectionJoint")
(setf (get dg_msgs::CorrectionJoint :definition-)
      "#纠偏轨迹
string number       # 设备编码
trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关节位置
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



(provide :dg_msgs/CorrectionJoint "84713a8da3c3c07def323d8336d70de0")


