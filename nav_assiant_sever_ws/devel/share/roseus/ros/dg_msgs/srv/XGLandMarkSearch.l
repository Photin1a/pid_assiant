;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::XGLandMarkSearch)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'XGLandMarkSearch (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::XGLANDMARKSEARCH")
  (make-package "DG_MSGS::XGLANDMARKSEARCH"))
(unless (find-package "DG_MSGS::XGLANDMARKSEARCHREQUEST")
  (make-package "DG_MSGS::XGLANDMARKSEARCHREQUEST"))
(unless (find-package "DG_MSGS::XGLANDMARKSEARCHRESPONSE")
  (make-package "DG_MSGS::XGLANDMARKSEARCHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::XGLandMarkSearchRequest
  :super ros::object
  :slots (_camear_factory_start _search_radius ))

(defmethod dg_msgs::XGLandMarkSearchRequest
  (:init
   (&key
    ((:camear_factory_start __camear_factory_start) (instance geometry_msgs::PoseArray :init))
    ((:search_radius __search_radius) 0.0)
    )
   (send-super :init)
   (setq _camear_factory_start __camear_factory_start)
   (setq _search_radius (float __search_radius))
   self)
  (:camear_factory_start
   (&rest __camear_factory_start)
   (if (keywordp (car __camear_factory_start))
       (send* _camear_factory_start __camear_factory_start)
     (progn
       (if __camear_factory_start (setq _camear_factory_start (car __camear_factory_start)))
       _camear_factory_start)))
  (:search_radius
   (&optional __search_radius)
   (if __search_radius (setq _search_radius __search_radius)) _search_radius)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _camear_factory_start
    (send _camear_factory_start :serialization-length)
    ;; float32 _search_radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _camear_factory_start
       (send _camear_factory_start :serialize s)
     ;; float32 _search_radius
       (sys::poke _search_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _camear_factory_start
     (send _camear_factory_start :deserialize buf ptr-) (incf ptr- (send _camear_factory_start :serialization-length))
   ;; float32 _search_radius
     (setq _search_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dg_msgs::XGLandMarkSearchResponse
  :super ros::object
  :slots (_motion_link_factory_start ))

(defmethod dg_msgs::XGLandMarkSearchResponse
  (:init
   (&key
    ((:motion_link_factory_start __motion_link_factory_start) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _motion_link_factory_start __motion_link_factory_start)
   self)
  (:motion_link_factory_start
   (&rest __motion_link_factory_start)
   (if (keywordp (car __motion_link_factory_start))
       (send* _motion_link_factory_start __motion_link_factory_start)
     (progn
       (if __motion_link_factory_start (setq _motion_link_factory_start (car __motion_link_factory_start)))
       _motion_link_factory_start)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _motion_link_factory_start
    (send _motion_link_factory_start :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _motion_link_factory_start
       (send _motion_link_factory_start :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _motion_link_factory_start
     (send _motion_link_factory_start :deserialize buf ptr-) (incf ptr- (send _motion_link_factory_start :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::XGLandMarkSearch
  :super ros::object
  :slots ())

(setf (get dg_msgs::XGLandMarkSearch :md5sum-) "7434ec9527fdaa3278286227ab996863")
(setf (get dg_msgs::XGLandMarkSearch :datatype-) "dg_msgs/XGLandMarkSearch")
(setf (get dg_msgs::XGLandMarkSearch :request) dg_msgs::XGLandMarkSearchRequest)
(setf (get dg_msgs::XGLandMarkSearch :response) dg_msgs::XGLandMarkSearchResponse)

(defmethod dg_msgs::XGLandMarkSearchRequest
  (:response () (instance dg_msgs::XGLandMarkSearchResponse :init)))

(setf (get dg_msgs::XGLandMarkSearchRequest :md5sum-) "7434ec9527fdaa3278286227ab996863")
(setf (get dg_msgs::XGLandMarkSearchRequest :datatype-) "dg_msgs/XGLandMarkSearchRequest")
(setf (get dg_msgs::XGLandMarkSearchRequest :definition-)
      "# 仙工站点搜索 - 欧式距离1.6m(包含z)+并集
geometry_msgs/PoseArray camear_factory_start            # 需要搜索的pose
float32 search_radius                                   # 搜索半径

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
geometry_msgs/PoseArray motion_link_factory_start       # 搜索到的pose


================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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

(setf (get dg_msgs::XGLandMarkSearchResponse :md5sum-) "7434ec9527fdaa3278286227ab996863")
(setf (get dg_msgs::XGLandMarkSearchResponse :datatype-) "dg_msgs/XGLandMarkSearchResponse")
(setf (get dg_msgs::XGLandMarkSearchResponse :definition-)
      "# 仙工站点搜索 - 欧式距离1.6m(包含z)+并集
geometry_msgs/PoseArray camear_factory_start            # 需要搜索的pose
float32 search_radius                                   # 搜索半径

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
geometry_msgs/PoseArray motion_link_factory_start       # 搜索到的pose


================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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



(provide :dg_msgs/XGLandMarkSearch "7434ec9527fdaa3278286227ab996863")


