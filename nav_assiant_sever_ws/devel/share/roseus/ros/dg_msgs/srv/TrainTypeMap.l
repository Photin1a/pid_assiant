;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::TrainTypeMap)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'TrainTypeMap (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::TRAINTYPEMAP")
  (make-package "DG_MSGS::TRAINTYPEMAP"))
(unless (find-package "DG_MSGS::TRAINTYPEMAPREQUEST")
  (make-package "DG_MSGS::TRAINTYPEMAPREQUEST"))
(unless (find-package "DG_MSGS::TRAINTYPEMAPRESPONSE")
  (make-package "DG_MSGS::TRAINTYPEMAPRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::TrainTypeMapRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::TrainTypeMapRequest
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

(defclass dg_msgs::TrainTypeMapResponse
  :super ros::object
  :slots (_paths ))

(defmethod dg_msgs::TrainTypeMapResponse
  (:init
   (&key
    ((:paths __paths) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _paths __paths)
   self)
  (:paths
   (&optional __paths)
   (if __paths (setq _paths __paths)) _paths)
  (:serialization-length
   ()
   (+
    ;; string[] _paths
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _paths)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _paths
     (write-long (length _paths) s)
     (dolist (elem _paths)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _paths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _paths (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _paths i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass dg_msgs::TrainTypeMap
  :super ros::object
  :slots ())

(setf (get dg_msgs::TrainTypeMap :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::TrainTypeMap :datatype-) "dg_msgs/TrainTypeMap")
(setf (get dg_msgs::TrainTypeMap :request) dg_msgs::TrainTypeMapRequest)
(setf (get dg_msgs::TrainTypeMap :response) dg_msgs::TrainTypeMapResponse)

(defmethod dg_msgs::TrainTypeMapRequest
  (:response () (instance dg_msgs::TrainTypeMapResponse :init)))

(setf (get dg_msgs::TrainTypeMapRequest :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::TrainTypeMapRequest :datatype-) "dg_msgs/TrainTypeMapRequest")
(setf (get dg_msgs::TrainTypeMapRequest :definition-)
      "---
string[] paths

")

(setf (get dg_msgs::TrainTypeMapResponse :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::TrainTypeMapResponse :datatype-) "dg_msgs/TrainTypeMapResponse")
(setf (get dg_msgs::TrainTypeMapResponse :definition-)
      "---
string[] paths

")



(provide :dg_msgs/TrainTypeMap "6492c325ba20fade9dfa2542bc679f51")


