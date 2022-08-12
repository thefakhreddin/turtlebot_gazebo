
(cl:in-package :asdf)

(defsystem "nuturtle_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "start" :depends-on ("_package_start"))
    (:file "_package_start" :depends-on ("_package"))
  ))