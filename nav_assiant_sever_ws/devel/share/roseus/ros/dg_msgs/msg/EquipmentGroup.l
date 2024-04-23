;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::EquipmentGroup)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'EquipmentGroup (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::EQUIPMENTGROUP")
  (make-package "DG_MSGS::EQUIPMENTGROUP"))

(in-package "ROS")
;;//! \htmlinclude EquipmentGroup.msg.html


(defclass dg_msgs::EquipmentGroup
  :super ros::object
  :slots (_name _number _slide_table _lifting_column _robot_arm _cameras ))

(defmethod dg_msgs::EquipmentGroup
  (:init
   (&key
    ((:name __name) "")
    ((:number __number) "")
    ((:slide_table __slide_table) (instance dg_msgs::SlideTableInfo :init))
    ((:lifting_column __lifting_column) (instance dg_msgs::LiftingColumnInfo :init))
    ((:robot_arm __robot_arm) (instance dg_msgs::RobotArmInfo :init))
    ((:cameras __cameras) (let (r) (dotimes (i 0) (push (instance dg_msgs::CameraInfo :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _number (string __number))
   (setq _slide_table __slide_table)
   (setq _lifting_column __lifting_column)
   (setq _robot_arm __robot_arm)
   (setq _cameras __cameras)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:slide_table
   (&rest __slide_table)
   (if (keywordp (car __slide_table))
       (send* _slide_table __slide_table)
     (progn
       (if __slide_table (setq _slide_table (car __slide_table)))
       _slide_table)))
  (:lifting_column
   (&rest __lifting_column)
   (if (keywordp (car __lifting_column))
       (send* _lifting_column __lifting_column)
     (progn
       (if __lifting_column (setq _lifting_column (car __lifting_column)))
       _lifting_column)))
  (:robot_arm
   (&rest __robot_arm)
   (if (keywordp (car __robot_arm))
       (send* _robot_arm __robot_arm)
     (progn
       (if __robot_arm (setq _robot_arm (car __robot_arm)))
       _robot_arm)))
  (:cameras
   (&rest __cameras)
   (if (keywordp (car __cameras))
       (send* _cameras __cameras)
     (progn
       (if __cameras (setq _cameras (car __cameras)))
       _cameras)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _number
    4 (length _number)
    ;; dg_msgs/SlideTableInfo _slide_table
    (send _slide_table :serialization-length)
    ;; dg_msgs/LiftingColumnInfo _lifting_column
    (send _lifting_column :serialization-length)
    ;; dg_msgs/RobotArmInfo _robot_arm
    (send _robot_arm :serialization-length)
    ;; dg_msgs/CameraInfo[] _cameras
    (apply #'+ (send-all _cameras :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; dg_msgs/SlideTableInfo _slide_table
       (send _slide_table :serialize s)
     ;; dg_msgs/LiftingColumnInfo _lifting_column
       (send _lifting_column :serialize s)
     ;; dg_msgs/RobotArmInfo _robot_arm
       (send _robot_arm :serialize s)
     ;; dg_msgs/CameraInfo[] _cameras
     (write-long (length _cameras) s)
     (dolist (elem _cameras)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; dg_msgs/SlideTableInfo _slide_table
     (send _slide_table :deserialize buf ptr-) (incf ptr- (send _slide_table :serialization-length))
   ;; dg_msgs/LiftingColumnInfo _lifting_column
     (send _lifting_column :deserialize buf ptr-) (incf ptr- (send _lifting_column :serialization-length))
   ;; dg_msgs/RobotArmInfo _robot_arm
     (send _robot_arm :deserialize buf ptr-) (incf ptr- (send _robot_arm :serialization-length))
   ;; dg_msgs/CameraInfo[] _cameras
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cameras (let (r) (dotimes (i n) (push (instance dg_msgs::CameraInfo :init) r)) r))
     (dolist (elem- _cameras)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dg_msgs::EquipmentGroup :md5sum-) "3f0794ee84d32d51d621caef93d18cf5")
(setf (get dg_msgs::EquipmentGroup :datatype-) "dg_msgs/EquipmentGroup")
(setf (get dg_msgs::EquipmentGroup :definition-)
      "string name             # 设备组名称
string number           # 设备组编号
SlideTableInfo slide_table
LiftingColumnInfo lifting_column
RobotArmInfo robot_arm
CameraInfo[] cameras

================================================================================
MSG: dg_msgs/SlideTableInfo
EquipmentCommon equipment
string number           # 设备组编号

================================================================================
MSG: dg_msgs/EquipmentCommon
int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer

================================================================================
MSG: dg_msgs/LiftingColumnInfo
EquipmentCommon equipment
string number           # 设备组编号

================================================================================
MSG: dg_msgs/RobotArmInfo
EquipmentCommon equipment
string number           # 设备组编号
int32 state
bool enabled            # 机械臂是否使能标志
bool protective_stop    # 机械臂是否检测到碰撞
bool emergency_stop     # 机械臂是否急停
bool drag_status        # 机械臂是否处于拖拽状态
bool recording          # 机械臂是否处于录制状态
bool moving_stop        # 机械臂是否处于运动状态
float64 speed_ratio     # 机械臂当前速度
bool error_status       # 机械臂是否处于报错状态
string[] error_msgs     # 机械臂的错误信息反馈
string payload          # 自定义信息，用于存放不同型号机械臂信息
================================================================================
MSG: dg_msgs/CameraInfo
EquipmentCommon equipment
string number           # 设备组编号
string sn_number
int32 type
float32[] intrinsics

")



(provide :dg_msgs/EquipmentGroup "3f0794ee84d32d51d621caef93d18cf5")


