;; Auto-generated. Do not edit!


(when (boundp 'nuslam::TurtleMap)
  (if (not (find-package "NUSLAM"))
    (make-package "NUSLAM"))
  (shadow 'TurtleMap (find-package "NUSLAM")))
(unless (find-package "NUSLAM::TURTLEMAP")
  (make-package "NUSLAM::TURTLEMAP"))

(in-package "ROS")
;;//! \htmlinclude TurtleMap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass nuslam::TurtleMap
  :super ros::object
  :slots (_header _cx _cy _r ))

(defmethod nuslam::TurtleMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cx __cx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cy __cy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:r __r) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cx __cx)
   (setq _cy __cy)
   (setq _r __r)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _cx
    (* 8    (length _cx)) 4
    ;; float64[] _cy
    (* 8    (length _cy)) 4
    ;; float64[] _r
    (* 8    (length _r)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _cx
     (write-long (length _cx) s)
     (dotimes (i (length _cx))
       (sys::poke (elt _cx i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _cy
     (write-long (length _cy) s)
     (dotimes (i (length _cy))
       (sys::poke (elt _cy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _r
     (write-long (length _r) s)
     (dotimes (i (length _r))
       (sys::poke (elt _r i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _cx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cx i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _cy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _r
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _r i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get nuslam::TurtleMap :md5sum-) "2d40027dbb6d72b6b7d7e7a1e02116dc")
(setf (get nuslam::TurtleMap :datatype-) "nuslam/TurtleMap")
(setf (get nuslam::TurtleMap :definition-)
      "# feature map
# header 
Header header
# circle x position of center
float64[] cx
# circle y position of center
float64[] cy
# circle radius
float64[] r

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :nuslam/TurtleMap "2d40027dbb6d72b6b7d7e7a1e02116dc")


