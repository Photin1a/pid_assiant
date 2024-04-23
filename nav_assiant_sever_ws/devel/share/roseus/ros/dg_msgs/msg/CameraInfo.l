;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::CameraInfo)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'CameraInfo (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::CAMERAINFO")
  (make-package "DG_MSGS::CAMERAINFO"))

(in-package "ROS")
;;//! \htmlinclude CameraInfo.msg.html


(defclass dg_msgs::CameraInfo
  :super ros::object
  :slots (_equipment _number _sn_number _type _intrinsics ))

(defmethod dg_msgs::CameraInfo
  (:init
   (&key
    ((:equipment __equipment) (instance dg_msgs::EquipmentCommon :init))
    ((:number __number) "")
    ((:sn_number __sn_number) "")
    ((:type __type) 0)
    ((:intrinsics __intrinsics) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _equipment __equipment)
   (setq _number (string __number))
   (setq _sn_number (string __sn_number))
   (setq _type (round __type))
   (setq _intrinsics __intrinsics)
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
  (:sn_number
   (&optional __sn_number)
   (if __sn_number (setq _sn_number __sn_number)) _sn_number)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:intrinsics
   (&optional __intrinsics)
   (if __intrinsics (setq _intrinsics __intrinsics)) _intrinsics)
  (:serialization-length
   ()
   (+
    ;; dg_msgs/EquipmentCommon _equipment
    (send _equipment :serialization-length)
    ;; string _number
    4 (length _number)
    ;; string _sn_number
    4 (length _sn_number)
    ;; int32 _type
    4
    ;; float32[] _intrinsics
    (* 4    (length _intrinsics)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dg_msgs/EquipmentCommon _equipment
       (send _equipment :serialize s)
     ;; string _number
       (write-long (length _number) s) (princ _number s)
     ;; string _sn_number
       (write-long (length _sn_number) s) (princ _sn_number s)
     ;; int32 _type
       (write-long _type s)
     ;; float32[] _intrinsics
     (write-long (length _intrinsics) s)
     (dotimes (i (length _intrinsics))
       (sys::poke (elt _intrinsics i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dg_msgs/EquipmentCommon _equipment
     (send _equipment :deserialize buf ptr-) (incf ptr- (send _equipment :serialization-length))
   ;; string _number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sn_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sn_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _intrinsics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intrinsics (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intrinsics i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dg_msgs::CameraInfo :md5sum-) "0e1b22249cf44b930907f3d67d01392c")
(setf (get dg_msgs::CameraInfo :datatype-) "dg_msgs/CameraInfo")
(setf (get dg_msgs::CameraInfo :definition-)
      "EquipmentCommon equipment
string number           # 设备组编号
string sn_number
int32 type
float32[] intrinsics

================================================================================
MSG: dg_msgs/EquipmentCommon
int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer

")



(provide :dg_msgs/CameraInfo "0e1b22249cf44b930907f3d67d01392c")


