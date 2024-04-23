;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ChassisInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ChassisInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CHASSISINFO")
  (make-package "DG_MSGS::CHASSISINFO"))

(in-package "ROS")
;;//! \htmlinclude ChassisInfo.msg.html


(defclass dg_msgs::ChassisInfo
  :super ros::object
  :slots (_equipment _min_linear_speed _max_linear_speed _linear_speed_scaling _min_angular_speed _max_angular_speed _angular_speed_scaling ))

(defmethod dg_msgs::ChassisInfo
  (:init
   (&key
    ((:equipment __equipment) (instance dg_msgs::EquipmentCommon :init))
    ((:min_linear_speed __min_linear_speed) 0.0)
    ((:max_linear_speed __max_linear_speed) 0.0)
    ((:linear_speed_scaling __linear_speed_scaling) 0.0)
    ((:min_angular_speed __min_angular_speed) 0.0)
    ((:max_angular_speed __max_angular_speed) 0.0)
    ((:angular_speed_scaling __angular_speed_scaling) 0.0)
    )
   (send-super :init)
   (setq _equipment __equipment)
   (setq _min_linear_speed (float __min_linear_speed))
   (setq _max_linear_speed (float __max_linear_speed))
   (setq _linear_speed_scaling (float __linear_speed_scaling))
   (setq _min_angular_speed (float __min_angular_speed))
   (setq _max_angular_speed (float __max_angular_speed))
   (setq _angular_speed_scaling (float __angular_speed_scaling))
   self)
  (:equipment
   (&rest __equipment)
   (if (keywordp (car __equipment))
       (send* _equipment __equipment)
     (progn
       (if __equipment (setq _equipment (car __equipment)))
       _equipment)))
  (:min_linear_speed
   (&optional __min_linear_speed)
   (if __min_linear_speed (setq _min_linear_speed __min_linear_speed)) _min_linear_speed)
  (:max_linear_speed
   (&optional __max_linear_speed)
   (if __max_linear_speed (setq _max_linear_speed __max_linear_speed)) _max_linear_speed)
  (:linear_speed_scaling
   (&optional __linear_speed_scaling)
   (if __linear_speed_scaling (setq _linear_speed_scaling __linear_speed_scaling)) _linear_speed_scaling)
  (:min_angular_speed
   (&optional __min_angular_speed)
   (if __min_angular_speed (setq _min_angular_speed __min_angular_speed)) _min_angular_speed)
  (:max_angular_speed
   (&optional __max_angular_speed)
   (if __max_angular_speed (setq _max_angular_speed __max_angular_speed)) _max_angular_speed)
  (:angular_speed_scaling
   (&optional __angular_speed_scaling)
   (if __angular_speed_scaling (setq _angular_speed_scaling __angular_speed_scaling)) _angular_speed_scaling)
  (:serialization-length
   ()
   (+
    ;; dg_msgs/EquipmentCommon _equipment
    (send _equipment :serialization-length)
    ;; float32 _min_linear_speed
    4
    ;; float32 _max_linear_speed
    4
    ;; float32 _linear_speed_scaling
    4
    ;; float32 _min_angular_speed
    4
    ;; float32 _max_angular_speed
    4
    ;; float32 _angular_speed_scaling
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/EquipmentCommon _equipment
       (send _equipment :serialize s)
     ;; float32 _min_linear_speed
       (sys::poke _min_linear_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_linear_speed
       (sys::poke _max_linear_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_speed_scaling
       (sys::poke _linear_speed_scaling (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_angular_speed
       (sys::poke _min_angular_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_angular_speed
       (sys::poke _max_angular_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_speed_scaling
       (sys::poke _angular_speed_scaling (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/EquipmentCommon _equipment
     (send _equipment :deserialize buf ptr-) (incf ptr- (send _equipment :serialization-length))
   ;; float32 _min_linear_speed
     (setq _min_linear_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_linear_speed
     (setq _max_linear_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_speed_scaling
     (setq _linear_speed_scaling (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_angular_speed
     (setq _min_angular_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_angular_speed
     (setq _max_angular_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_speed_scaling
     (setq _angular_speed_scaling (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dg_msgs::ChassisInfo :md5sum-) "b34e814c1edbbed19ddf136cbfcaad5f")
(setf (get dg_msgs::ChassisInfo :datatype-) "dg_msgs/ChassisInfo")
(setf (get dg_msgs::ChassisInfo :definition-)
      "EquipmentCommon equipment
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



(provide :dg_msgs/ChassisInfo "b34e814c1edbbed19ddf136cbfcaad5f")


