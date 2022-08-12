
(cl:in-package :asdf)

(defsystem "rigid2d-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "set_pose" :depends-on ("_package_set_pose"))
    (:file "_package_set_pose" :depends-on ("_package"))
  ))