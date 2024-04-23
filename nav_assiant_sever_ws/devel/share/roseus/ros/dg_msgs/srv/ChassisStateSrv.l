;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ChassisStateSrv)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ChassisStateSrv (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CHASSISSTATESRV")
  (make-package "DG_MSGS::CHASSISSTATESRV"))
(unless (find-package "DG_MSGS::CHASSISSTATESRVREQUEST")
  (make-package "DG_MSGS::CHASSISSTATESRVREQUEST"))
(unless (find-package "DG_MSGS::CHASSISSTATESRVRESPONSE")
  (make-package "DG_MSGS::CHASSISSTATESRVRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::ChassisStateSrvRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::ChassisStateSrvRequest
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

(defclass dg_msgs::ChassisStateSrvResponse
  :super ros::object
  :slots (_chassis_info ))

(defmethod dg_msgs::ChassisStateSrvResponse
  (:init
   (&key
    ((:chassis_info __chassis_info) (instance dg_msgs::ChassisInfo :init))
    )
   (send-super :init)
   (setq _chassis_info __chassis_info)
   self)
  (:chassis_info
   (&rest __chassis_info)
   (if (keywordp (car __chassis_info))
       (send* _chassis_info __chassis_info)
     (progn
       (if __chassis_info (setq _chassis_info (car __chassis_info)))
       _chassis_info)))
  (:serialization-length
   ()
   (+
    ;; dg_msgs/ChassisInfo _chassis_info
    (send _chassis_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/ChassisInfo _chassis_info
       (send _chassis_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/ChassisInfo _chassis_info
     (send _chassis_info :deserialize buf ptr-) (incf ptr- (send _chassis_info :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::ChassisStateSrv
  :super ros::object
  :slots ())

(setf (get dg_msgs::ChassisStateSrv :md5sum-) "b6dae2c19e5871a707bd9c92ebb1cef2")
(setf (get dg_msgs::ChassisStateSrv :datatype-) "dg_msgs/ChassisStateSrv")
(setf (get dg_msgs::ChassisStateSrv :request) dg_msgs::ChassisStateSrvRequest)
(setf (get dg_msgs::ChassisStateSrv :response) dg_msgs::ChassisStateSrvResponse)

(defmethod dg_msgs::ChassisStateSrvRequest
  (:response () (instance dg_msgs::ChassisStateSrvResponse :init)))

(setf (get dg_msgs::ChassisStateSrvRequest :md5sum-) "b6dae2c19e5871a707bd9c92ebb1cef2")
(setf (get dg_msgs::ChassisStateSrvRequest :datatype-) "dg_msgs/ChassisStateSrvRequest")
(setf (get dg_msgs::ChassisStateSrvRequest :definition-)
      "---
ChassisInfo chassis_info


================================================================================
MSG: dg_msgs/ChassisInfo
EquipmentCommon equipment
float32 min_linear_speed
float32 max_linear_speed
float32 linear_speed_scaling
float32 min_angular_speed
float32 max_angular_speed
float32 angular_speed_scaling

================================================================================
MSG: dg_msgs/EquipmentCommon
int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer
")

(setf (get dg_msgs::ChassisStateSrvResponse :md5sum-) "b6dae2c19e5871a707bd9c92ebb1cef2")
(setf (get dg_msgs::ChassisStateSrvResponse :datatype-) "dg_msgs/ChassisStateSrvResponse")
(setf (get dg_msgs::ChassisStateSrvResponse :definition-)
      "---
ChassisInfo chassis_info


================================================================================
MSG: dg_msgs/ChassisInfo
EquipmentCommon equipment
float32 min_linear_speed
float32 max_linear_speed
float32 linear_speed_scaling
float32 min_angular_speed
float32 max_angular_speed
float32 angular_speed_scaling

================================================================================
MSG: dg_msgs/EquipmentCommon
int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer
")



(provide :dg_msgs/ChassisStateSrv "b6dae2c19e5871a707bd9c92ebb1cef2")


