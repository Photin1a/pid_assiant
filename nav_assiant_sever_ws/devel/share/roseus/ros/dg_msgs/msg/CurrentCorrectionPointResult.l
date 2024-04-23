;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CurrentCorrectionPointResult)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CurrentCorrectionPointResult (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CURRENTCORRECTIONPOINTRESULT")
  (make-package "DG_MSGS::CURRENTCORRECTIONPOINTRESULT"))

(in-package "ROS")
;;//! \htmlinclude CurrentCorrectionPointResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "TRAJECTORY_MSGS"))
  (ros::roseus-add-msgs "trajectory_msgs"))


(defclass dg_msgs::CurrentCorrectionPointResult
  :super ros::object
  :slots (_success _err_msg _poses _joints _offset _custom_message ))

(defmethod dg_msgs::CurrentCorrectionPointResult
  (:init
   (&key
    ((:success __success) nil)
    ((:err_msg __err_msg) "")
    ((:poses __poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
    ((:offset __offset) 0.0)
    ((:custom_message __custom_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _err_msg (string __err_msg))
   (setq _poses __poses)
   (setq _joints __joints)
   (setq _offset (float __offset))
   (setq _custom_message (string __custom_message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:err_msg
   (&optional __err_msg)
   (if __err_msg (setq _err_msg __err_msg)) _err_msg)
  (:poses
   (&rest __poses)
   (if (keywordp (car __poses))
       (send* _poses __poses)
     (progn
       (if __poses (setq _poses (car __poses)))
       _poses)))
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:custom_message
   (&optional __custom_message)
   (if __custom_message (setq _custom_message __custom_message)) _custom_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _err_msg
    4 (length _err_msg)
    ;; geometry_msgs/PoseStamped[] _poses
    (apply #'+ (send-all _poses :serialization-length)) 4
    ;; trajectory_msgs/JointTrajectoryPoint[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ;; float32 _offset
    4
    ;; string _custom_message
    4 (length _custom_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _err_msg
       (write-long (length _err_msg) s) (princ _err_msg s)
     ;; geometry_msgs/PoseStamped[] _poses
     (write-long (length _poses) s)
     (dolist (elem _poses)
       (send elem :serialize s)
       )
     ;; trajectory_msgs/JointTrajectoryPoint[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _custom_message
       (write-long (length _custom_message) s) (princ _custom_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _err_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _err_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped[] _poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poses (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; trajectory_msgs/JointTrajectoryPoint[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance trajectory_msgs::JointTrajectoryPoint :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _custom_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::CurrentCorrectionPointResult :md5sum-) "ad70ce7fb663fc33a470d964e3356454")
(setf (get dg_msgs::CurrentCorrectionPointResult :datatype-) "dg_msgs/CurrentCorrectionPointResult")
(setf (get dg_msgs::CurrentCorrectionPointResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
bool success
string err_msg
geometry_msgs/PoseStamped[] poses
trajectory_msgs/JointTrajectoryPoint[] joints # 机械臂关键点
float32 offset      # 升降柱伸缩量
string custom_message

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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



(provide :dg_msgs/CurrentCorrectionPointResult "ad70ce7fb663fc33a470d964e3356454")


