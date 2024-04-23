;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotArmAcqMove)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotArmAcqMove (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTARMACQMOVE")
  (make-package "DG_MSGS::ROBOTARMACQMOVE"))
(unless (find-package "DG_MSGS::ROBOTARMACQMOVEREQUEST")
  (make-package "DG_MSGS::ROBOTARMACQMOVEREQUEST"))
(unless (find-package "DG_MSGS::ROBOTARMACQMOVERESPONSE")
  (make-package "DG_MSGS::ROBOTARMACQMOVERESPONSE"))

(in-package "ROS")





(defclass dg_msgs::RobotArmAcqMoveRequest
  :super ros::object
  :slots (_number ))

(defmethod dg_msgs::RobotArmAcqMoveRequest
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

(defclass dg_msgs::RobotArmAcqMoveResponse
  :super ros::object
  :slots (_state_info _image_name ))

(defmethod dg_msgs::RobotArmAcqMoveResponse
  (:init
   (&key
    ((:state_info __state_info) (instance dg_msgs::UniversalStateInfo :init))
    ((:image_name __image_name) "")
    )
   (send-super :init)
   (setq _state_info __state_info)
   (setq _image_name (string __image_name))
   self)
  (:state_info
   (&rest __state_info)
   (if (keywordp (car __state_info))
       (send* _state_info __state_info)
     (progn
       (if __state_info (setq _state_info (car __state_info)))
       _state_info)))
  (:image_name
   (&optional __image_name)
   (if __image_name (setq _image_name __image_name)) _image_name)
  (:serialization-length
   ()
   (+
    ;; dg_msgs/UniversalStateInfo _state_info
    (send _state_info :serialization-length)
    ;; string _image_name
    4 (length _image_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/UniversalStateInfo _state_info
       (send _state_info :serialize s)
     ;; string _image_name
       (write-long (length _image_name) s) (princ _image_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/UniversalStateInfo _state_info
     (send _state_info :deserialize buf ptr-) (incf ptr- (send _state_info :serialization-length))
   ;; string _image_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::RobotArmAcqMove
  :super ros::object
  :slots ())

(setf (get dg_msgs::RobotArmAcqMove :md5sum-) "859763e90581dbf8fc57b389728da002")
(setf (get dg_msgs::RobotArmAcqMove :datatype-) "dg_msgs/RobotArmAcqMove")
(setf (get dg_msgs::RobotArmAcqMove :request) dg_msgs::RobotArmAcqMoveRequest)
(setf (get dg_msgs::RobotArmAcqMove :response) dg_msgs::RobotArmAcqMoveResponse)

(defmethod dg_msgs::RobotArmAcqMoveRequest
  (:response () (instance dg_msgs::RobotArmAcqMoveResponse :init)))

(setf (get dg_msgs::RobotArmAcqMoveRequest :md5sum-) "859763e90581dbf8fc57b389728da002")
(setf (get dg_msgs::RobotArmAcqMoveRequest :datatype-) "dg_msgs/RobotArmAcqMoveRequest")
(setf (get dg_msgs::RobotArmAcqMoveRequest :definition-)
      "string number       # 设备编码
---
UniversalStateInfo  state_info
string image_name
  
# 0 表示成功；
# error: 1 表示运动失败；
# warning: 2 表示规划失败 （运动失败就不能再进行采集任务的执行了，规划失败也就是目标像点无法到达）

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")

(setf (get dg_msgs::RobotArmAcqMoveResponse :md5sum-) "859763e90581dbf8fc57b389728da002")
(setf (get dg_msgs::RobotArmAcqMoveResponse :datatype-) "dg_msgs/RobotArmAcqMoveResponse")
(setf (get dg_msgs::RobotArmAcqMoveResponse :definition-)
      "string number       # 设备编码
---
UniversalStateInfo  state_info
string image_name
  
# 0 表示成功；
# error: 1 表示运动失败；
# warning: 2 表示规划失败 （运动失败就不能再进行采集任务的执行了，规划失败也就是目标像点无法到达）

================================================================================
MSG: dg_msgs/UniversalStateInfo
int32 state_index   # 状态索引值：统一0是正常，其他数字自定义
string node_name    # 当前节点名
")



(provide :dg_msgs/RobotArmAcqMove "859763e90581dbf8fc57b389728da002")


