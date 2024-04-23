;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::FindPoints)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'FindPoints (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::FINDPOINTS")
  (make-package "DG_MSGS::FINDPOINTS"))
(unless (find-package "DG_MSGS::FINDPOINTSREQUEST")
  (make-package "DG_MSGS::FINDPOINTSREQUEST"))
(unless (find-package "DG_MSGS::FINDPOINTSRESPONSE")
  (make-package "DG_MSGS::FINDPOINTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass dg_msgs::FindPointsRequest
  :super ros::object
  :slots (_pose _index ))

(defmethod dg_msgs::FindPointsRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:index __index) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _index (string __index))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; string _index
    4 (length _index)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; string _index
       (write-long (length _index) s) (princ _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _index
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _index (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::FindPointsResponse
  :super ros::object
  :slots (_status ))

(defmethod dg_msgs::FindPointsResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dg_msgs::FindPoints
  :super ros::object
  :slots ())

(setf (get dg_msgs::FindPoints :md5sum-) "f54d798a96e1f9618d39f1eb022e1f57")
(setf (get dg_msgs::FindPoints :datatype-) "dg_msgs/FindPoints")
(setf (get dg_msgs::FindPoints :request) dg_msgs::FindPointsRequest)
(setf (get dg_msgs::FindPoints :response) dg_msgs::FindPointsResponse)

(defmethod dg_msgs::FindPointsRequest
  (:response () (instance dg_msgs::FindPointsResponse :init)))

(setf (get dg_msgs::FindPointsRequest :md5sum-) "f54d798a96e1f9618d39f1eb022e1f57")
(setf (get dg_msgs::FindPointsRequest :datatype-) "dg_msgs/FindPointsRequest")
(setf (get dg_msgs::FindPointsRequest :definition-)
      "geometry_msgs/PoseStamped pose
string index

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
---
bool status
")

(setf (get dg_msgs::FindPointsResponse :md5sum-) "f54d798a96e1f9618d39f1eb022e1f57")
(setf (get dg_msgs::FindPointsResponse :datatype-) "dg_msgs/FindPointsResponse")
(setf (get dg_msgs::FindPointsResponse :definition-)
      "geometry_msgs/PoseStamped pose
string index

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
---
bool status
")



(provide :dg_msgs/FindPoints "f54d798a96e1f9618d39f1eb022e1f57")


