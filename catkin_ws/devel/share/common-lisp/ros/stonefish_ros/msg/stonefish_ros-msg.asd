
(cl:in-package :asdf)

(defsystem "stonefish_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BeaconInfo" :depends-on ("_package_BeaconInfo"))
    (:file "_package_BeaconInfo" :depends-on ("_package"))
    (:file "DVL" :depends-on ("_package_DVL"))
    (:file "_package_DVL" :depends-on ("_package"))
    (:file "DVLBeam" :depends-on ("_package_DVLBeam"))
    (:file "_package_DVLBeam" :depends-on ("_package"))
    (:file "Event" :depends-on ("_package_Event"))
    (:file "_package_Event" :depends-on ("_package"))
    (:file "EventArray" :depends-on ("_package_EventArray"))
    (:file "_package_EventArray" :depends-on ("_package"))
    (:file "INS" :depends-on ("_package_INS"))
    (:file "_package_INS" :depends-on ("_package"))
    (:file "Int32Stamped" :depends-on ("_package_Int32Stamped"))
    (:file "_package_Int32Stamped" :depends-on ("_package"))
    (:file "NEDPose" :depends-on ("_package_NEDPose"))
    (:file "_package_NEDPose" :depends-on ("_package"))
    (:file "ThrusterState" :depends-on ("_package_ThrusterState"))
    (:file "_package_ThrusterState" :depends-on ("_package"))
  ))