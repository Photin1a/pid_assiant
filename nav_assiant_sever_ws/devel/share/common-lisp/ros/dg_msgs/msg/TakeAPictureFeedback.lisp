; Auto-generated. Do not edit!


(cl:in-package dg_msgs-msg)


;//! \htmlinclude TakeAPictureFeedback.msg.html

(cl:defclass <TakeAPictureFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TakeAPictureFeedback (<TakeAPictureFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TakeAPictureFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TakeAPictureFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dg_msgs-msg:<TakeAPictureFeedback> is deprecated: use dg_msgs-msg:TakeAPictureFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TakeAPictureFeedback>) ostream)
  "Serializes a message object of type '<TakeAPictureFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TakeAPictureFeedback>) istream)
  "Deserializes a message object of type '<TakeAPictureFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TakeAPictureFeedback>)))
  "Returns string type for a message object of type '<TakeAPictureFeedback>"
  "dg_msgs/TakeAPictureFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TakeAPictureFeedback)))
  "Returns string type for a message object of type 'TakeAPictureFeedback"
  "dg_msgs/TakeAPictureFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TakeAPictureFeedback>)))
  "Returns md5sum for a message object of type '<TakeAPictureFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TakeAPictureFeedback)))
  "Returns md5sum for a message object of type 'TakeAPictureFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TakeAPictureFeedback>)))
  "Returns full string definition for message of type '<TakeAPictureFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TakeAPictureFeedback)))
  "Returns full string definition for message of type 'TakeAPictureFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TakeAPictureFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TakeAPictureFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TakeAPictureFeedback
))
