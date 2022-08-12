;; Auto-generated. Do not edit!


(when (boundp 'nuturtle_robot::start)
  (if (not (find-package "NUTURTLE_ROBOT"))
    (make-package "NUTURTLE_ROBOT"))
  (shadow 'start (find-package "NUTURTLE_ROBOT")))
(unless (find-package "NUTURTLE_ROBOT::START")
  (make-package "NUTURTLE_ROBOT::START"))
(unless (find-package "NUTURTLE_ROBOT::STARTREQUEST")
  (make-package "NUTURTLE_ROBOT::STARTREQUEST"))
(unless (find-package "NUTURTLE_ROBOT::STARTRESPONSE")
  (make-package "NUTURTLE_ROBOT::STARTRESPONSE"))

(in-package "ROS")





(defclass nuturtle_robot::startRequest
  :super ros::object
  :slots (_direction ))

(defmethod nuturtle_robot::startRequest
  (:init
   (&key
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _direction (string __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nuturtle_robot::startResponse
  :super ros::object
  :slots (_direction_set ))

(defmethod nuturtle_robot::startResponse
  (:init
   (&key
    ((:direction_set __direction_set) nil)
    )
   (send-super :init)
   (setq _direction_set __direction_set)
   self)
  (:direction_set
   (&optional (__direction_set :null))
   (if (not (eq __direction_set :null)) (setq _direction_set __direction_set)) _direction_set)
  (:serialization-length
   ()
   (+
    ;; bool _direction_set
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _direction_set
       (if _direction_set (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _direction_set
     (setq _direction_set (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nuturtle_robot::start
  :super ros::object
  :slots ())

(setf (get nuturtle_robot::start :md5sum-) "e743aa0e8f3e06b0783c4c788c47711b")
(setf (get nuturtle_robot::start :datatype-) "nuturtle_robot/start")
(setf (get nuturtle_robot::start :request) nuturtle_robot::startRequest)
(setf (get nuturtle_robot::start :response) nuturtle_robot::startResponse)

(defmethod nuturtle_robot::startRequest
  (:response () (instance nuturtle_robot::startResponse :init)))

(setf (get nuturtle_robot::startRequest :md5sum-) "e743aa0e8f3e06b0783c4c788c47711b")
(setf (get nuturtle_robot::startRequest :datatype-) "nuturtle_robot/startRequest")
(setf (get nuturtle_robot::startRequest :definition-)
      "# set the direction of the rotation
# direction is either clockwise or counter-clockwise
# set_pose_state is true when the direction is established 
string direction
---
bool direction_set

")

(setf (get nuturtle_robot::startResponse :md5sum-) "e743aa0e8f3e06b0783c4c788c47711b")
(setf (get nuturtle_robot::startResponse :datatype-) "nuturtle_robot/startResponse")
(setf (get nuturtle_robot::startResponse :definition-)
      "# set the direction of the rotation
# direction is either clockwise or counter-clockwise
# set_pose_state is true when the direction is established 
string direction
---
bool direction_set

")



(provide :nuturtle_robot/start "e743aa0e8f3e06b0783c4c788c47711b")


