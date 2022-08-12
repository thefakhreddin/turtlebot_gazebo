
(cl:in-package :asdf)

(defsystem "nuslam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TurtleMap" :depends-on ("_package_TurtleMap"))
    (:file "_package_TurtleMap" :depends-on ("_package"))
  ))