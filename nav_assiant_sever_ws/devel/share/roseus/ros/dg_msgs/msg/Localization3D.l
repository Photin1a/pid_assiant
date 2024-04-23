;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::Localization3D)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'Localization3D (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::LOCALIZATION3D")
  (make-package "DG_MSGS::LOCALIZATION3D"))

(in-package "ROS")
;;//! \htmlinclude Localization3D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::Localization3D
  :super ros::object
  :slots (_localization _confidence _delay_ms ))

(defmethod dg_msgs::Localization3D
  (:init
   (&key
    ((:localization __localization) (instance geometry_msgs::PoseStamped :init))
    ((:confidence __confidence) 0.0)
    ((:delay_ms __delay_ms) 0.0)
    )
   (send-super :init)
   (setq _localization __localization)
   (setq _confidence (float __confidence))
   (setq _delay_ms (float __delay_ms))
   self)
  (:localization
   (&rest __localization)
   (if (keywordp (car __localization))
       (send* _localization __localization)
     (progn
       (if __localization (setq _localization (car __localization)))
       _localization)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:delay_ms
   (&optional __delay_ms)
   (if __delay_ms (setq _delay_ms __delay_ms)) _delay_ms)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _localization
    (send _localization :serialization-length)
    ;; float32 _confidence
    4
    ;; float32 _delay_ms
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _localization
       (send _localization :serialize s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _delay_ms
       (sys::poke _delay_ms (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _localization
     (send _localization :deserialize buf ptr-) (incf ptr- (send _localization :serialization-length))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _delay_ms
     (setq _delay_ms (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dg_msgs::Localization3D :md5sum-) "ce50be351436d14407b6f3d3588249ed")
(setf (get dg_msgs::Localization3D :datatype-) "dg_msgs/Localization3D")
(setf (get dg_msgs::Localization3D :definition-)
      "# 3D导航用的定位信息
geometry_msgs/PoseStamped localization              # 位置姿态
float32 confidence                                  # 定位置信度
float32 delay_ms                                    # 定位延时
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

")



(provide :dg_msgs/Localization3D "ce50be351436d14407b6f3d3588249ed")


