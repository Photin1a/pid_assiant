;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CollisionTest)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CollisionTest (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::COLLISIONTEST")
  (make-package "DG_MSGS::COLLISIONTEST"))
(unless (find-package "DG_MSGS::COLLISIONTESTREQUEST")
  (make-package "DG_MSGS::COLLISIONTESTREQUEST"))
(unless (find-package "DG_MSGS::COLLISIONTESTRESPONSE")
  (make-package "DG_MSGS::COLLISIONTESTRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::CollisionTestRequest
  :super ros::object
  :slots (_planning_group ))

(defmethod dg_msgs::CollisionTestRequest
  (:init
   (&key
    ((:planning_group __planning_group) "")
    )
   (send-super :init)
   (setq _planning_group (string __planning_group))
   self)
  (:planning_group
   (&optional __planning_group)
   (if __planning_group (setq _planning_group __planning_group)) _planning_group)
  (:serialization-length
   ()
   (+
    ;; string _planning_group
    4 (length _planning_group)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _planning_group
       (write-long (length _planning_group) s) (princ _planning_group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _planning_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dg_msgs::CollisionTestResponse
  :super ros::object
  :slots (_Is_collision _collision_joint ))

(defmethod dg_msgs::CollisionTestResponse
  (:init
   (&key
    ((:Is_collision __Is_collision) nil)
    ((:collision_joint __collision_joint) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _Is_collision __Is_collision)
   (setq _collision_joint __collision_joint)
   self)
  (:Is_collision
   (&optional __Is_collision)
   (if __Is_collision (setq _Is_collision __Is_collision)) _Is_collision)
  (:collision_joint
   (&optional __collision_joint)
   (if __collision_joint (setq _collision_joint __collision_joint)) _collision_joint)
  (:serialization-length
   ()
   (+
    ;; bool _Is_collision
    1
    ;; string[] _collision_joint
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _collision_joint)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Is_collision
       (if _Is_collision (write-byte -1 s) (write-byte 0 s))
     ;; string[] _collision_joint
     (write-long (length _collision_joint) s)
     (dolist (elem _collision_joint)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Is_collision
     (setq _Is_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _collision_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collision_joint (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _collision_joint i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dg_msgs::CollisionTest
  :super ros::object
  :slots ())

(setf (get dg_msgs::CollisionTest :md5sum-) "2f299f8cf2ba5e251107e33972dff6f4")
(setf (get dg_msgs::CollisionTest :datatype-) "dg_msgs/CollisionTest")
(setf (get dg_msgs::CollisionTest :request) dg_msgs::CollisionTestRequest)
(setf (get dg_msgs::CollisionTest :response) dg_msgs::CollisionTestResponse)

(defmethod dg_msgs::CollisionTestRequest
  (:response () (instance dg_msgs::CollisionTestResponse :init)))

(setf (get dg_msgs::CollisionTestRequest :md5sum-) "2f299f8cf2ba5e251107e33972dff6f4")
(setf (get dg_msgs::CollisionTestRequest :datatype-) "dg_msgs/CollisionTestRequest")
(setf (get dg_msgs::CollisionTestRequest :definition-)
      "string planning_group
---
bool Is_collision
string[] collision_joint
")

(setf (get dg_msgs::CollisionTestResponse :md5sum-) "2f299f8cf2ba5e251107e33972dff6f4")
(setf (get dg_msgs::CollisionTestResponse :datatype-) "dg_msgs/CollisionTestResponse")
(setf (get dg_msgs::CollisionTestResponse :definition-)
      "string planning_group
---
bool Is_collision
string[] collision_joint
")



(provide :dg_msgs/CollisionTest "2f299f8cf2ba5e251107e33972dff6f4")


