;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::SlideTableInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'SlideTableInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::SLIDETABLEINFO")
  (make-package "DG_MSGS::SLIDETABLEINFO"))

(in-package "ROS")
;;//! \htmlinclude SlideTableInfo.msg.html


(defclass dg_msgs::SlideTableInfo
  :super ros::object
  :slots (_equipment _number ))

(defmethod dg_msgs::SlideTableInfo
  (:init
   (&key
    ((:equipment __equipment) (instance dg_msgs::EquipmentCommon :init))
    ((:number __number) "")
    )
   (send-super :init)
   (setq _equipment __equipment)
   (setq _number (string __number))
   self)
  (:equipment
   (&rest __equipment)
   (if (keywordp (car __equipment))
       (send* _equipment __equipment)
     (progn
       (if __equipment (setq _equipment (car __equipment)))
       _equipment)))
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:serialization-length
   ()
   (+
    ;; dg_msgs/EquipmentCommon _equipment
    (send _equipment :serialization-length)
    ;; string _number
    4 (length _number)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/EquipmentCommon _equipment
       (send _equipment :serialize s)
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/EquipmentCommon _equipment
     (send _equipment :deserialize buf ptr-) (incf ptr- (send _equipment :serialization-length))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::SlideTableInfo :md5sum-) "a92e2b46f01bfa741cf5246e7733e6ae")
(setf (get dg_msgs::SlideTableInfo :datatype-) "dg_msgs/SlideTableInfo")
(setf (get dg_msgs::SlideTableInfo :definition-)
      "EquipmentCommon equipment
string number           # 设备组编号

================================================================================
MSG: dg_msgs/EquipmentCommon
int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer

")



(provide :dg_msgs/SlideTableInfo "a92e2b46f01bfa741cf5246e7733e6ae")


