
(cl:in-package :asdf)

(defsystem "stonefish_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Respawn" :depends-on ("_package_Respawn"))
    (:file "_package_Respawn" :depends-on ("_package"))
    (:file "SonarSettings" :depends-on ("_package_SonarSettings"))
    (:file "_package_SonarSettings" :depends-on ("_package"))
    (:file "SonarSettings2" :depends-on ("_package_SonarSettings2"))
    (:file "_package_SonarSettings2" :depends-on ("_package"))
  ))