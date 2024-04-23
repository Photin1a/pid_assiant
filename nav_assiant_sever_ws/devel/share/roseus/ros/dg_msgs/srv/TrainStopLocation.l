;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TrainStopLocation)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TrainStopLocation (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TRAINSTOPLOCATION")
  (make-package "DG_MSGS::TRAINSTOPLOCATION"))
(unless (find-package "DG_MSGS::TRAINSTOPLOCATIONREQUEST")
  (make-package "DG_MSGS::TRAINSTOPLOCATIONREQUEST"))
(unless (find-package "DG_MSGS::TRAINSTOPLOCATIONRESPONSE")
  (make-package "DG_MSGS::TRAINSTOPLOCATIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::TrainStopLocationRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::TrainStopLocationRequest
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

(defclass dg_msgs::TrainStopLocationResponse
  :super ros::object
  :slots (_pose _custom_message ))

(defmethod dg_msgs::TrainStopLocationResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:custom_message __custom_message) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _custom_message (string __custom_message))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:custom_message
   (&optional __custom_message)
   (if __custom_message (setq _custom_message __custom_message)) _custom_message)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; string _custom_message
    4 (length _custom_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; string _custom_message
       (write-long (length _custom_message) s) (princ _custom_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _custom_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _custom_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::TrainStopLocation
  :super ros::object
  :slots ())

(setf (get dg_msgs::TrainStopLocation :md5sum-) "1bfaf8027cbdae005d41220561672628")
(setf (get dg_msgs::TrainStopLocation :datatype-) "dg_msgs/TrainStopLocation")
(setf (get dg_msgs::TrainStopLocation :request) dg_msgs::TrainStopLocationRequest)
(setf (get dg_msgs::TrainStopLocation :response) dg_msgs::TrainStopLocationResponse)

(defmethod dg_msgs::TrainStopLocationRequest
  (:response () (instance dg_msgs::TrainStopLocationResponse :init)))

(setf (get dg_msgs::TrainStopLocationRequest :md5sum-) "1bfaf8027cbdae005d41220561672628")
(setf (get dg_msgs::TrainStopLocationRequest :datatype-) "dg_msgs/TrainStopLocationRequest")
(setf (get dg_msgs::TrainStopLocationRequest :definition-)
      "---
geometry_msgs/PoseStamped pose
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

(setf (get dg_msgs::TrainStopLocationResponse :md5sum-) "1bfaf8027cbdae005d41220561672628")
(setf (get dg_msgs::TrainStopLocationResponse :datatype-) "dg_msgs/TrainStopLocationResponse")
(setf (get dg_msgs::TrainStopLocationResponse :definition-)
      "---
geometry_msgs/PoseStamped pose
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



(provide :dg_msgs/TrainStopLocation "1bfaf8027cbdae005d41220561672628")


