;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotStateSrv)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotStateSrv (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTSTATESRV")
  (make-package "DG_MSGS::ROBOTSTATESRV"))
(unless (find-package "DG_MSGS::ROBOTSTATESRVREQUEST")
  (make-package "DG_MSGS::ROBOTSTATESRVREQUEST"))
(unless (find-package "DG_MSGS::ROBOTSTATESRVRESPONSE")
  (make-package "DG_MSGS::ROBOTSTATESRVRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotStateSrvRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::RobotStateSrvRequest
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

(defclass dg_msgs::RobotStateSrvResponse
  :super ros::object
  :slots (_robot_info ))

(defmethod dg_msgs::RobotStateSrvResponse
  (:init
   (&key
    ((:robot_info __robot_info) (instance dg_msgs::RobotInfo :init))
    )
   (send-super :init)
   (setq _robot_info __robot_info)
   self)
  (:robot_info
   (&rest __robot_info)
   (if (keywordp (car __robot_info))
       (send* _robot_info __robot_info)
     (progn
       (if __robot_info (setq _robot_info (car __robot_info)))
       _robot_info)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/RobotInfo _robot_info
    (send _robot_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/RobotInfo _robot_info
       (send _robot_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/RobotInfo _robot_info
     (send _robot_info :deserialize buf ptr-) (incf ptr- (send _robot_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::RobotStateSrv
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotStateSrv :md5sum-) "7fd23f71870ecd30e0ef7b9251da4ebc")
(setf (get dg_msgs::RobotStateSrv :datatype-) "dg_msgs/RobotStateSrv")
(setf (get dg_msgs::RobotStateSrv :request) dg_msgs::RobotStateSrvRequest)
(setf (get dg_msgs::RobotStateSrv :response) dg_msgs::RobotStateSrvResponse)

(defmethod dg_msgs::RobotStateSrvRequest
  (:response () (instance dg_msgs::RobotStateSrvResponse :init)))

(setf (get dg_msgs::RobotStateSrvRequest :md5sum-) "7fd23f71870ecd30e0ef7b9251da4ebc")
(setf (get dg_msgs::RobotStateSrvRequest :datatype-) "dg_msgs/RobotStateSrvRequest")
(setf (get dg_msgs::RobotStateSrvRequest :definition-)
      "---
RobotInfo robot_info


================================================================================
MSG: dg_msgs/RobotInfo
string robot_name
string robot_model
string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）
int32 battery_level # 0 = empty, 100 = full
int32 exception_code        # 异常码
string exception_message    # 异常信息

")

(setf (get dg_msgs::RobotStateSrvResponse :md5sum-) "7fd23f71870ecd30e0ef7b9251da4ebc")
(setf (get dg_msgs::RobotStateSrvResponse :datatype-) "dg_msgs/RobotStateSrvResponse")
(setf (get dg_msgs::RobotStateSrvResponse :definition-)
      "---
RobotInfo robot_info


================================================================================
MSG: dg_msgs/RobotInfo
string robot_name
string robot_model
string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）
int32 battery_level # 0 = empty, 100 = full
int32 exception_code        # 异常码
string exception_message    # 异常信息

")



(provide :dg_msgs/RobotStateSrv "7fd23f71870ecd30e0ef7b9251da4ebc")


