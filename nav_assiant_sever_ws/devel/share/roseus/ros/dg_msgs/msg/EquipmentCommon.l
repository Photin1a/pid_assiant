;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::EquipmentCommon)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'EquipmentCommon (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::EQUIPMENTCOMMON")
  (make-package "DG_MSGS::EQUIPMENTCOMMON"))

(in-package "ROS")
;;//! \htmlinclude EquipmentCommon.msg.html


(defclass dg_msgs::EquipmentCommon
  :super ros::object
  :slots (_equipment_id _equipment_name _connected _connected_time _model _manufacturer ))

(defmethod dg_msgs::EquipmentCommon
  (:init
   (&key
    ((:equipment_id __equipment_id) 0)
    ((:equipment_name __equipment_name) "")
    ((:connected __connected) nil)
    ((:connected_time __connected_time) 0)
    ((:model __model) "")
    ((:manufacturer __manufacturer) "")
    )
   (send-super :init)
   (setq _equipment_id (round __equipment_id))
   (setq _equipment_name (string __equipment_name))
   (setq _connected __connected)
   (setq _connected_time (round __connected_time))
   (setq _model (string __model))
   (setq _manufacturer (string __manufacturer))
   self)
  (:equipment_id
   (&optional __equipment_id)
   (if __equipment_id (setq _equipment_id __equipment_id)) _equipment_id)
  (:equipment_name
   (&optional __equipment_name)
   (if __equipment_name (setq _equipment_name __equipment_name)) _equipment_name)
  (:connected
   (&optional __connected)
   (if __connected (setq _connected __connected)) _connected)
  (:connected_time
   (&optional __connected_time)
   (if __connected_time (setq _connected_time __connected_time)) _connected_time)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:manufacturer
   (&optional __manufacturer)
   (if __manufacturer (setq _manufacturer __manufacturer)) _manufacturer)
  (:serialization-length
   ()
   (+
    ;; int32 _equipment_id
    4
    ;; string _equipment_name
    4 (length _equipment_name)
    ;; bool _connected
    1
    ;; uint64 _connected_time
    8
    ;; string _model
    4 (length _model)
    ;; string _manufacturer
    4 (length _manufacturer)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _equipment_id
       (write-long _equipment_id s)
     ;; string _equipment_name
       (write-long (length _equipment_name) s) (princ _equipment_name s)
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _connected_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _connected_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _connected_time) (= (length (_connected_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_connected_time . bv) 0) 0) s)
              (write-long (ash (elt (_connected_time . bv) 1) -1) s))
             ((and (class _connected_time) (= (length (_connected_time . bv)) 1)) ;; big1
              (write-long (elt (_connected_time . bv) 0) s)
              (write-long (if (>= _connected_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _connected_time s)(write-long (if (>= _connected_time 0) 0 #xffffffff) s)))
     ;; string _model
       (write-long (length _model) s) (princ _model s)
     ;; string _manufacturer
       (write-long (length _manufacturer) s) (princ _manufacturer s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _equipment_id
     (setq _equipment_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _equipment_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _equipment_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _connected_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _connected_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _connected_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _model
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _manufacturer
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _manufacturer (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dg_msgs::EquipmentCommon :md5sum-) "f069498b74d3b3fdeaf4df87eac49670")
(setf (get dg_msgs::EquipmentCommon :datatype-) "dg_msgs/EquipmentCommon")
(setf (get dg_msgs::EquipmentCommon :definition-)
      "int32 equipment_id
string equipment_name
bool connected
uint64 connected_time
string model
string manufacturer

")



(provide :dg_msgs/EquipmentCommon "f069498b74d3b3fdeaf4df87eac49670")


