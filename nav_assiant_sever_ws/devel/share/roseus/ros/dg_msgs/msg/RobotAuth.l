;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::RobotAuth)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'RobotAuth (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::ROBOTAUTH")
  (make-package "DG_MSGS::ROBOTAUTH"))

(in-package "ROS")
;;//! \htmlinclude RobotAuth.msg.html


(defclass dg_msgs::RobotAuth
  :super ros::object
  :slots (_robot_id _token ))

(defmethod dg_msgs::RobotAuth
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:token __token) "")
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _token (string __token))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:token
   (&optional __token)
   (if __token (setq _token __token)) _token)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; string _token
    4 (length _token)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; string _token
       (write-long (length _token) s) (princ _token s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::RobotAuth :md5sum-) "b9d0ad1c6a095a78c7397487b7034aa9")
(setf (get dg_msgs::RobotAuth :datatype-) "dg_msgs/RobotAuth")
(setf (get dg_msgs::RobotAuth :definition-)
      "string robot_id
string token

")



(provide :dg_msgs/RobotAuth "b9d0ad1c6a095a78c7397487b7034aa9")


