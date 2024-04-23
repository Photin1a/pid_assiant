;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CorrectionPoint)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CorrectionPoint (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CORRECTIONPOINT")
  (make-package "DG_MSGS::CORRECTIONPOINT"))

(in-package "ROS")
;;//! \htmlinclude CorrectionPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::CorrectionPoint
  :super ros::object
  :slots (_number _pose _offset _custom_message ))

(defmethod dg_msgs::CorrectionPoint
  (:init
   (&key
    ((:number __number) "")
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:offset __offset) 0.0)
    ((:custom_message __custom_message) "")
    )
   (send-super :init)
   (setq _number (string __number))
   (setq _pose __pose)
   (setq _offset (float __offset))
   (setq _custom_message (string __custom_message))
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:custom_message
   (&optional __custom_message)
   (if __custom_message (setq _custom_message __custom_message)) _custom_message)
  (:serialization-length
   ()
   (+
    ;; string _number
    4 (length _number)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; float32 _offset
    4
    ;; string _custom_message
    4 (length _custom_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _custom_message
       (write-long (length _custom_message) s) (princ _custom_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _custom_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::CorrectionPoint :md5sum-) "c6604cbe4012a19e8a5d0b619586f1ea")
(setf (get dg_msgs::CorrectionPoint :datatype-) "dg_msgs/CorrectionPoint")
(setf (get dg_msgs::CorrectionPoint :definition-)
      "string number                                   # 设备组编号
geometry_msgs/PoseStamped pose                  # 相机目标点的pose
float32 offset                                  # 升降柱伸缩量
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

")



(provide :dg_msgs/CorrectionPoint "c6604cbe4012a19e8a5d0b619586f1ea")


