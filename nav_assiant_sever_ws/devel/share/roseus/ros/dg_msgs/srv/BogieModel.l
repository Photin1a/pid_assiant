;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::BogieModel)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'BogieModel (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::BOGIEMODEL")
  (make-package "DG_MSGS::BOGIEMODEL"))
(unless (find-package "DG_MSGS::BOGIEMODELREQUEST")
  (make-package "DG_MSGS::BOGIEMODELREQUEST"))
(unless (find-package "DG_MSGS::BOGIEMODELRESPONSE")
  (make-package "DG_MSGS::BOGIEMODELRESPONSE"))

(in-package "ROS")





(defclass dg_msgs::BogieModelRequest
  :super ros::object
  :slots ())

(defmethod dg_msgs::BogieModelRequest
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

(defclass dg_msgs::BogieModelResponse
  :super ros::object
  :slots (_paths ))

(defmethod dg_msgs::BogieModelResponse
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

(defclass dg_msgs::BogieModel
  :super ros::object
  :slots ())

(setf (get dg_msgs::BogieModel :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::BogieModel :datatype-) "dg_msgs/BogieModel")
(setf (get dg_msgs::BogieModel :request) dg_msgs::BogieModelRequest)
(setf (get dg_msgs::BogieModel :response) dg_msgs::BogieModelResponse)

(defmethod dg_msgs::BogieModelRequest
  (:response () (instance dg_msgs::BogieModelResponse :init)))

(setf (get dg_msgs::BogieModelRequest :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::BogieModelRequest :datatype-) "dg_msgs/BogieModelRequest")
(setf (get dg_msgs::BogieModelRequest :definition-)
      "---
string[] paths

")

(setf (get dg_msgs::BogieModelResponse :md5sum-) "6492c325ba20fade9dfa2542bc679f51")
(setf (get dg_msgs::BogieModelResponse :datatype-) "dg_msgs/BogieModelResponse")
(setf (get dg_msgs::BogieModelResponse :definition-)
      "---
string[] paths

")



(provide :dg_msgs/BogieModel "6492c325ba20fade9dfa2542bc679f51")


