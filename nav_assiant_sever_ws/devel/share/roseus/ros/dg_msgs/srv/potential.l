;; Auto-generated. Do not edit!


(when (boundp 'dg_msgs::potential)
  (if (not (find-package "DG_MSGS"))
    (make-package "DG_MSGS"))
  (shadow 'potential (find-package "DG_MSGS")))
(unless (find-package "DG_MSGS::POTENTIAL")
  (make-package "DG_MSGS::POTENTIAL"))
(unless (find-package "DG_MSGS::POTENTIALREQUEST")
  (make-package "DG_MSGS::POTENTIALREQUEST"))
(unless (find-package "DG_MSGS::POTENTIALRESPONSE")
  (make-package "DG_MSGS::POTENTIALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dg_msgs::potentialRequest
  :super ros::object
  :slots (_pose _joints_real _flag_cmd ))

(defmethod dg_msgs::potentialRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:joints_real __joints_real) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:flag_cmd __flag_cmd) (instance std_msgs::Int8MultiArray :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _joints_real __joints_real)
   (setq _flag_cmd __flag_cmd)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:joints_real
   (&optional __joints_real)
   (if __joints_real (setq _joints_real __joints_real)) _joints_real)
  (:flag_cmd
   (&rest __flag_cmd)
   (if (keywordp (car __flag_cmd))
       (send* _flag_cmd __flag_cmd)
     (progn
       (if __flag_cmd (setq _flag_cmd (car __flag_cmd)))
       _flag_cmd)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[] _joints_real
    (* 8    (length _joints_real)) 4
    ;; std_msgs/Int8MultiArray _flag_cmd
    (send _flag_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[] _joints_real
     (write-long (length _joints_real) s)
     (dotimes (i (length _joints_real))
       (sys::poke (elt _joints_real i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; std_msgs/Int8MultiArray _flag_cmd
       (send _flag_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[] _joints_real
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints_real (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints_real i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; std_msgs/Int8MultiArray _flag_cmd
     (send _flag_cmd :deserialize buf ptr-) (incf ptr- (send _flag_cmd :serialization-length))
   ;;
   self)
  )

(defclass dg_msgs::potentialResponse
  :super ros::object
  :slots (_ret _joints_new_real _pose_new_real _data_error ))

(defmethod dg_msgs::potentialResponse
  (:init
   (&key
    ((:ret __ret) 0)
    ((:joints_new_real __joints_new_real) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_new_real __pose_new_real) (instance geometry_msgs::Pose :init))
    ((:data_error __data_error) 0.0)
    )
   (send-super :init)
   (setq _ret (round __ret))
   (setq _joints_new_real __joints_new_real)
   (setq _pose_new_real __pose_new_real)
   (setq _data_error (float __data_error))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:joints_new_real
   (&optional __joints_new_real)
   (if __joints_new_real (setq _joints_new_real __joints_new_real)) _joints_new_real)
  (:pose_new_real
   (&rest __pose_new_real)
   (if (keywordp (car __pose_new_real))
       (send* _pose_new_real __pose_new_real)
     (progn
       (if __pose_new_real (setq _pose_new_real (car __pose_new_real)))
       _pose_new_real)))
  (:data_error
   (&optional __data_error)
   (if __data_error (setq _data_error __data_error)) _data_error)
  (:serialization-length
   ()
   (+
    ;; int32 _ret
    4
    ;; float64[] _joints_new_real
    (* 8    (length _joints_new_real)) 4
    ;; geometry_msgs/Pose _pose_new_real
    (send _pose_new_real :serialization-length)
    ;; float64 _data_error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ret
       (write-long _ret s)
     ;; float64[] _joints_new_real
     (write-long (length _joints_new_real) s)
     (dotimes (i (length _joints_new_real))
       (sys::poke (elt _joints_new_real i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Pose _pose_new_real
       (send _pose_new_real :serialize s)
     ;; float64 _data_error
       (sys::poke _data_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _joints_new_real
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints_new_real (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints_new_real i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Pose _pose_new_real
     (send _pose_new_real :deserialize buf ptr-) (incf ptr- (send _pose_new_real :serialization-length))
   ;; float64 _data_error
     (setq _data_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dg_msgs::potential
  :super ros::object
  :slots ())

(setf (get dg_msgs::potential :md5sum-) "90456488a5ad9b449b3876cc4ad04605")
(setf (get dg_msgs::potential :datatype-) "dg_msgs/potential")
(setf (get dg_msgs::potential :request) dg_msgs::potentialRequest)
(setf (get dg_msgs::potential :response) dg_msgs::potentialResponse)

(defmethod dg_msgs::potentialRequest
  (:response () (instance dg_msgs::potentialResponse :init)))

(setf (get dg_msgs::potentialRequest :md5sum-) "90456488a5ad9b449b3876cc4ad04605")
(setf (get dg_msgs::potentialRequest :datatype-) "dg_msgs/potentialRequest")
(setf (get dg_msgs::potentialRequest :definition-)
      "geometry_msgs/Pose pose
float64[]  joints_real
std_msgs/Int8MultiArray flag_cmd

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

================================================================================
MSG: std_msgs/Int8MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int8[]            data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
int32                   ret
float64[]                               joints_new_real
geometry_msgs/Pose    pose_new_real
float64         data_error

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

(setf (get dg_msgs::potentialResponse :md5sum-) "90456488a5ad9b449b3876cc4ad04605")
(setf (get dg_msgs::potentialResponse :datatype-) "dg_msgs/potentialResponse")
(setf (get dg_msgs::potentialResponse :definition-)
      "geometry_msgs/Pose pose
float64[]  joints_real
std_msgs/Int8MultiArray flag_cmd

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

================================================================================
MSG: std_msgs/Int8MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int8[]            data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
int32                   ret
float64[]                               joints_new_real
geometry_msgs/Pose    pose_new_real
float64         data_error

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



(provide :dg_msgs/potential "90456488a5ad9b449b3876cc4ad04605")


