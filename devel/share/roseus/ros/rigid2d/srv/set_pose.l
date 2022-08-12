;; Auto-generated. Do not edit!


(when (boundp 'rigid2d::set_pose)
  (if (not (find-package "RIGID2D"))
    (make-package "RIGID2D"))
  (shadow 'set_pose (find-package "RIGID2D")))
(unless (find-package "RIGID2D::SET_POSE")
  (make-package "RIGID2D::SET_POSE"))
(unless (find-package "RIGID2D::SET_POSEREQUEST")
  (make-package "RIGID2D::SET_POSEREQUEST"))
(unless (find-package "RIGID2D::SET_POSERESPONSE")
  (make-package "RIGID2D::SET_POSERESPONSE"))

(in-package "ROS")





(defclass rigid2d::set_poseRequest
  :super ros::object
  :slots (_theta _x _y ))

(defmethod rigid2d::set_poseRequest
  (:init
   (&key
    ((:theta __theta) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _theta (float __theta))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _theta
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rigid2d::set_poseResponse
  :super ros::object
  :slots (_set_pose_state ))

(defmethod rigid2d::set_poseResponse
  (:init
   (&key
    ((:set_pose_state __set_pose_state) nil)
    )
   (send-super :init)
   (setq _set_pose_state __set_pose_state)
   self)
  (:set_pose_state
   (&optional (__set_pose_state :null))
   (if (not (eq __set_pose_state :null)) (setq _set_pose_state __set_pose_state)) _set_pose_state)
  (:serialization-length
   ()
   (+
    ;; bool _set_pose_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_pose_state
       (if _set_pose_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_pose_state
     (setq _set_pose_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rigid2d::set_pose
  :super ros::object
  :slots ())

(setf (get rigid2d::set_pose :md5sum-) "c5432c85aa30571647ef4a6b0e1b56d9")
(setf (get rigid2d::set_pose :datatype-) "rigid2d/set_pose")
(setf (get rigid2d::set_pose :request) rigid2d::set_poseRequest)
(setf (get rigid2d::set_pose :response) rigid2d::set_poseResponse)

(defmethod rigid2d::set_poseRequest
  (:response () (instance rigid2d::set_poseResponse :init)))

(setf (get rigid2d::set_poseRequest :md5sum-) "c5432c85aa30571647ef4a6b0e1b56d9")
(setf (get rigid2d::set_poseRequest :datatype-) "rigid2d/set_poseRequest")
(setf (get rigid2d::set_poseRequest :definition-)
      "# sets pose of robot
# theta (angular position) x/y (position)
# set_pose_state is true if the new pose service has been activated
float32 theta
float32 x
float32 y
---
bool set_pose_state

")

(setf (get rigid2d::set_poseResponse :md5sum-) "c5432c85aa30571647ef4a6b0e1b56d9")
(setf (get rigid2d::set_poseResponse :datatype-) "rigid2d/set_poseResponse")
(setf (get rigid2d::set_poseResponse :definition-)
      "# sets pose of robot
# theta (angular position) x/y (position)
# set_pose_state is true if the new pose service has been activated
float32 theta
float32 x
float32 y
---
bool set_pose_state

")



(provide :rigid2d/set_pose "c5432c85aa30571647ef4a6b0e1b56d9")


