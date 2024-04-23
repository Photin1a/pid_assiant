;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::ImageGoal)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'ImageGoal (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::IMAGEGOAL")
  (make-package "DG_MSGS::IMAGEGOAL"))

(in-package "ROS")
;;//! \htmlinclude ImageGoal.msg.html


(defclass dg_msgs::ImageGoal
  :super ros::object
  :slots (_id _number _types ))

(defmethod dg_msgs::ImageGoal
  (:init
   (&key
    ((:id __id) "")
    ((:number __number) "")
    ((:types __types) 0)
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _number (string __number))
   (setq _types (round __types))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:types
   (&optional __types)
   (if __types (setq _types __types)) _types)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; string _number
    4 (length _number)
    ;; int32 _types
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; int32 _types
       (write-long _types s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _types
     (setq _types (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dg_msgs::ImageGoal :md5sum-) "fbfef27b7beeeca86de68f1f450bf200")
(setf (get dg_msgs::ImageGoal :datatype-) "dg_msgs/ImageGoal")
(setf (get dg_msgs::ImageGoal :definition-)
      "string id          # ID
string number     # 设备编号
int32 types     # 拍照类型，灰度为`1`，彩色为`2`，深度为`4`，点云为`8`，多种类型时按位相与

")



(provide :dg_msgs/ImageGoal "fbfef27b7beeeca86de68f1f450bf200")


