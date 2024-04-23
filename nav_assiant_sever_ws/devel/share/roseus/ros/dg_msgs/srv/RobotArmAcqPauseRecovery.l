;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmAcqPauseRecovery)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmAcqPauseRecovery (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMACQPAUSERECOVERY")
  (make-package "DG_MSGS::ROBOTARMACQPAUSERECOVERY"))
(unless (find-package "DG_MSGS::ROBOTARMACQPAUSERECOVERYREQUEST")
  (make-package "DG_MSGS::ROBOTARMACQPAUSERECOVERYREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMACQPAUSERECOVERYRESPONSE")
  (make-package "DG_MSGS::ROBOTARMACQPAUSERECOVERYRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmAcqPauseRecoveryRequest
  :super ros::object
  :slots (_number _state_index ))

(defmethod dg_msgs::RobotArmAcqPauseRecoveryRequest
  (:init
   (&key
    ((:number __number) "")
    ((:state_index __state_index) 0)
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _state_index (round __state_index))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:state_index
   (&optional __state_index)
   (if __state_index (setq _state_index __state_index)) _state_index)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; int32 _state_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; int32 _state_index
       (write-long _state_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _state_index
     (setq _state_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::RobotArmAcqPauseRecoveryResponse
  :super ros::object
  :slots (_state_info ))

(defmethod dg_msgs::RobotArmAcqPauseRecoveryResponse
  (:init
   (&key
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    )
   (send-super :init)
   (setq _state_info __state_info)
   self)
  (:state_info
   (&rest __state_info)
   (if (keywordp (car __state_info))
       (send* _state_info __state_info)
     (progn
       (if __state_info (setq _state_info (car __state_info)))
       _state_info)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmAcqPauseRecovery
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmAcqPauseRecovery :md5sum-) "fa4fc94033ee71ead6be9ed12f3a7bc1")
(setf (get dg_msgs::RobotArmAcqPauseRecovery :datatype-) "dg_msgs/RobotArmAcqPauseRecovery")
(setf (get dg_msgs::RobotArmAcqPauseRecovery :request) dg_msgs::RobotArmAcqPauseRecoveryRequest)
(setf (get dg_msgs::RobotArmAcqPauseRecovery :response) dg_msgs::RobotArmAcqPauseRecoveryResponse)

(defmethod dg_msgs::RobotArmAcqPauseRecoveryRequest
  (:response () (instance dg_msgs::RobotArmAcqPauseRecoveryResponse :init)))

(setf (get dg_msgs::RobotArmAcqPauseRecoveryRequest :md5sum-) "fa4fc94033ee71ead6be9ed12f3a7bc1")
(setf (get dg_msgs::RobotArmAcqPauseRecoveryRequest :datatype-) "dg_msgs/RobotArmAcqPauseRecoveryRequest")
(setf (get dg_msgs::RobotArmAcqPauseRecoveryRequest :definition-)
      "string number        # 设备编码
int32 state_index    # pause(1), recovery(2), terminate(-1)
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::RobotArmAcqPauseRecoveryResponse :md5sum-) "fa4fc94033ee71ead6be9ed12f3a7bc1")
(setf (get dg_msgs::RobotArmAcqPauseRecoveryResponse :datatype-) "dg_msgs/RobotArmAcqPauseRecoveryResponse")
(setf (get dg_msgs::RobotArmAcqPauseRecoveryResponse :definition-)
      "string number        # 设备编码
int32 state_index    # pause(1), recovery(2), terminate(-1)
---
UniversalStateInfo  state_info

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/RobotArmAcqPauseRecovery "fa4fc94033ee71ead6be9ed12f3a7bc1")


