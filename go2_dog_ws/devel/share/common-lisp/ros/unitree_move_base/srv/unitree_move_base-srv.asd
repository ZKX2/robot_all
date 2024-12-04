
(cl:in-package :asdf)

(defsystem "unitree_move_base-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "C_pose" :depends-on ("_package_C_pose"))
    (:file "_package_C_pose" :depends-on ("_package"))
  ))