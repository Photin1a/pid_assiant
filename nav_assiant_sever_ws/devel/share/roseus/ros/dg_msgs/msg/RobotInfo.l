;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTINFO")
  (make-package "DG_MSGS::ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotInfo.msg.html


(defclass dg_msgs::RobotInfo
  :super ros::object
  :slots (_robot_name _robot_model _state _battery_level _exception_code _exception_message ))

(defmethod dg_msgs::RobotInfo
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:robot_model __robot_model) "")
    ((:state __state) "")
    ((:battery_level __battery_level) 0)
    ((:exception_code __exception_code) 0)
    ((:exception_message __exception_message) "")
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _robot_model (string __robot_model))
   (setq _state (string __state))
   (setq _battery_level (round __battery_level))
   (setq _exception_code (round __exception_code))
   (setq _exception_message (string __exception_message))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:robot_model
   (&optional __robot_model)
   (if __robot_model (setq _robot_model __robot_model)) _robot_model)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:exception_code
   (&optional __exception_code)
   (if __exception_code (setq _exception_code __exception_code)) _exception_code)
  (:exception_message
   (&optional __exception_message)
   (if __exception_message (setq _exception_message __exception_message)) _exception_message)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _robot_model
    4 (length _robot_model)
    ;; string _state
    4 (length _state)
    ;; int32 _battery_level
    4
    ;; int32 _exception_code
    4
    ;; string _exception_message
    4 (length _exception_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _robot_model
       (write-long (length _robot_model) s) (princ _robot_model s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; int32 _battery_level
       (write-long _battery_level s)
     ;; int32 _exception_code
       (write-long _exception_code s)
     ;; string _exception_message
       (write-long (length _exception_message) s) (princ _exception_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _battery_level
     (setq _battery_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _exception_code
     (setq _exception_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _exception_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _exception_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::RobotInfo :md5sum-) "cd6f740e81722148b147dc17f6287738")
(setf (get dg_msgs::RobotInfo :datatype-) "dg_msgs/RobotInfo")
(setf (get dg_msgs::RobotInfo :definition-)
      "string robot_name
string robot_model
string state    # 机器人状态，standby（开机之后，正常状态），working（采集状态），teaching（示教），emergency（急停），exception（异常状态，有报错信息）
int32 battery_level # 0 = empty, 100 = full
int32 exception_code        # 异常码
string exception_message    # 异常信息


")



(provide :dg_msgs/RobotInfo "cd6f740e81722148b147dc17f6287738")


