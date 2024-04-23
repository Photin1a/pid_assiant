;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::AlterPose)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'AlterPose (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ALTERPOSE")
  (make-package "DG_MSGS::ALTERPOSE"))

(in-package "ROS")
;;//! \htmlinclude AlterPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::AlterPose
  :super ros::object
  :slots (_id _pose _lift_data ))

(defmethod dg_msgs::AlterPose
  (:init
   (&key
    ((:id __id) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:lift_data __lift_data) 0.0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pose __pose)
   (setq _lift_data (float __lift_data))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:lift_data
   (&optional __lift_data)
   (if __lift_data (setq _lift_data __lift_data)) _lift_data)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _lift_data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _lift_data
       (sys::poke _lift_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _lift_data
     (setq _lift_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get dg_msgs::AlterPose :md5sum-) "4803ab626dec65d88283829bd49d8744")
(setf (get dg_msgs::AlterPose :datatype-) "dg_msgs/AlterPose")
(setf (get dg_msgs::AlterPose :definition-)
      "string id
geometry_msgs/Pose pose
float64  lift_data
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



(provide :dg_msgs/AlterPose "4803ab626dec65d88283829bd49d8744")


