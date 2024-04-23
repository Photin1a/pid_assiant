;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TeachingRegframe)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TeachingRegframe (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TEACHINGREGFRAME")
  (make-package "DG_MSGS::TEACHINGREGFRAME"))
(unless (find-package "DG_MSGS::TEACHINGREGFRAMEREQUEST")
  (make-package "DG_MSGS::TEACHINGREGFRAMEREQUEST"))
(unless (find-package "DG_MSGS::TEACHINGREGFRAMERESPONSE")
  (make-package "DG_MSGS::TEACHINGREGFRAMERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::TeachingRegframeRequest
  :super ros::object
  :slots (_update_head2F _pcd_regframe_path _json_save_path _region_name _lidar_topic ))

(defmethod dg_msgs::TeachingRegframeRequest
  (:init
   (&key
    ((:update_head2F __update_head2F) nil)
    ((:pcd_regframe_path __pcd_regframe_path) "")
    ((:json_save_path __json_save_path) "")
    ((:region_name __region_name) "")
    ((:lidar_topic __lidar_topic) "")
    )
   (send-super :init)
   (setq _update_head2F __update_head2F)
   (setq _pcd_regframe_path (string __pcd_regframe_path))
   (setq _json_save_path (string __json_save_path))
   (setq _region_name (string __region_name))
   (setq _lidar_topic (string __lidar_topic))
   self)
  (:update_head2F
   (&optional __update_head2F)
   (if __update_head2F (setq _update_head2F __update_head2F)) _update_head2F)
  (:pcd_regframe_path
   (&optional __pcd_regframe_path)
   (if __pcd_regframe_path (setq _pcd_regframe_path __pcd_regframe_path)) _pcd_regframe_path)
  (:json_save_path
   (&optional __json_save_path)
   (if __json_save_path (setq _json_save_path __json_save_path)) _json_save_path)
  (:region_name
   (&optional __region_name)
   (if __region_name (setq _region_name __region_name)) _region_name)
  (:lidar_topic
   (&optional __lidar_topic)
   (if __lidar_topic (setq _lidar_topic __lidar_topic)) _lidar_topic)
  (:serialization-length
   ()
   (+
    ;; bool _update_head2F
    1
    ;; string _pcd_regframe_path
    4 (length _pcd_regframe_path)
    ;; string _json_save_path
    4 (length _json_save_path)
    ;; string _region_name
    4 (length _region_name)
    ;; string _lidar_topic
    4 (length _lidar_topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _update_head2F
       (if _update_head2F (write-byte -1 s) (write-byte 0 s))
     ;; string _pcd_regframe_path
       (write-long (length _pcd_regframe_path) s) (princ _pcd_regframe_path s)
     ;; string _json_save_path
       (write-long (length _json_save_path) s) (princ _json_save_path s)
     ;; string _region_name
       (write-long (length _region_name) s) (princ _region_name s)
     ;; string _lidar_topic
       (write-long (length _lidar_topic) s) (princ _lidar_topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _update_head2F
     (setq _update_head2F (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _pcd_regframe_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pcd_regframe_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _json_save_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_save_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _region_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _region_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lidar_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lidar_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::TeachingRegframeResponse
  :super ros::object
  :slots (_pcd_regframe_path _pose_regframe2head _pose_head2F ))

(defmethod dg_msgs::TeachingRegframeResponse
  (:init
   (&key
    ((:pcd_regframe_path __pcd_regframe_path) "")
    ((:pose_regframe2head __pose_regframe2head) (instance geometry_msgs::Pose :init))
    ((:pose_head2F __pose_head2F) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pcd_regframe_path (string __pcd_regframe_path))
   (setq _pose_regframe2head __pose_regframe2head)
   (setq _pose_head2F __pose_head2F)
   self)
  (:pcd_regframe_path
   (&optional __pcd_regframe_path)
   (if __pcd_regframe_path (setq _pcd_regframe_path __pcd_regframe_path)) _pcd_regframe_path)
  (:pose_regframe2head
   (&rest __pose_regframe2head)
   (if (keywordp (car __pose_regframe2head))
       (send* _pose_regframe2head __pose_regframe2head)
     (progn
       (if __pose_regframe2head (setq _pose_regframe2head (car __pose_regframe2head)))
       _pose_regframe2head)))
  (:pose_head2F
   (&rest __pose_head2F)
   (if (keywordp (car __pose_head2F))
       (send* _pose_head2F __pose_head2F)
     (progn
       (if __pose_head2F (setq _pose_head2F (car __pose_head2F)))
       _pose_head2F)))
  (:serialization-length
   ()
   (+
    ;; string _pcd_regframe_path
    4 (length _pcd_regframe_path)
    ;; geometry_msgs/Pose _pose_regframe2head
    (send _pose_regframe2head :serialization-length)
    ;; geometry_msgs/Pose _pose_head2F
    (send _pose_head2F :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pcd_regframe_path
       (write-long (length _pcd_regframe_path) s) (princ _pcd_regframe_path s)
     ;; geometry_msgs/Pose _pose_regframe2head
       (send _pose_regframe2head :serialize s)
     ;; geometry_msgs/Pose _pose_head2F
       (send _pose_head2F :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pcd_regframe_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pcd_regframe_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose_regframe2head
     (send _pose_regframe2head :deserialize buf ptr-) (incf ptr- (send _pose_regframe2head :serialization-length))
   ;; geometry_msgs/Pose _pose_head2F
     (send _pose_head2F :deserialize buf ptr-) (incf ptr- (send _pose_head2F :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::TeachingRegframe
  :super ros::object
  :slots ())

(setf (get dg_msgs::TeachingRegframe :md5sum-) "82733c39cc3dc283e1ac8112691de480")
(setf (get dg_msgs::TeachingRegframe :datatype-) "dg_msgs/TeachingRegframe")
(setf (get dg_msgs::TeachingRegframe :request) dg_msgs::TeachingRegframeRequest)
(setf (get dg_msgs::TeachingRegframe :response) dg_msgs::TeachingRegframeResponse)

(defmethod dg_msgs::TeachingRegframeRequest
  (:response () (instance dg_msgs::TeachingRegframeResponse :init)))

(setf (get dg_msgs::TeachingRegframeRequest :md5sum-) "82733c39cc3dc283e1ac8112691de480")
(setf (get dg_msgs::TeachingRegframeRequest :datatype-) "dg_msgs/TeachingRegframeRequest")
(setf (get dg_msgs::TeachingRegframeRequest :definition-)
      "bool update_head2F
string pcd_regframe_path
string json_save_path
string region_name
string lidar_topic

---
string pcd_regframe_path
geometry_msgs/Pose pose_regframe2head
geometry_msgs/Pose pose_head2F


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

(setf (get dg_msgs::TeachingRegframeResponse :md5sum-) "82733c39cc3dc283e1ac8112691de480")
(setf (get dg_msgs::TeachingRegframeResponse :datatype-) "dg_msgs/TeachingRegframeResponse")
(setf (get dg_msgs::TeachingRegframeResponse :definition-)
      "bool update_head2F
string pcd_regframe_path
string json_save_path
string region_name
string lidar_topic

---
string pcd_regframe_path
geometry_msgs/Pose pose_regframe2head
geometry_msgs/Pose pose_head2F


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



(provide :dg_msgs/TeachingRegframe "82733c39cc3dc283e1ac8112691de480")


