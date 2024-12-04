;; Auto-generated. Do not edit!


(when (boundp 'turn_on_wheeltec_robot::C_pose)
  (if (not (find-package "TURN_ON_WHEELTEC_ROBOT"))
    (make-package "TURN_ON_WHEELTEC_ROBOT"))
  (shadow 'C_pose (find-package "TURN_ON_WHEELTEC_ROBOT")))
(unless (find-package "TURN_ON_WHEELTEC_ROBOT::C_POSE")
  (make-package "TURN_ON_WHEELTEC_ROBOT::C_POSE"))
(unless (find-package "TURN_ON_WHEELTEC_ROBOT::C_POSEREQUEST")
  (make-package "TURN_ON_WHEELTEC_ROBOT::C_POSEREQUEST"))
(unless (find-package "TURN_ON_WHEELTEC_ROBOT::C_POSERESPONSE")
  (make-package "TURN_ON_WHEELTEC_ROBOT::C_POSERESPONSE"))

(in-package "ROS")





(defclass turn_on_wheeltec_robot::C_poseRequest
  :super ros::object
  :slots (_pose_x _pose_y _pose_z _theta ))

(defmethod turn_on_wheeltec_robot::C_poseRequest
  (:init
   (&key
    ((:pose_x __pose_x) 0.0)
    ((:pose_y __pose_y) 0.0)
    ((:pose_z __pose_z) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _pose_x (float __pose_x))
   (setq _pose_y (float __pose_y))
   (setq _pose_z (float __pose_z))
   (setq _theta (float __theta))
   self)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:pose_z
   (&optional __pose_z)
   (if __pose_z (setq _pose_z __pose_z)) _pose_z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float64 _pose_x
    8
    ;; float64 _pose_y
    8
    ;; float64 _pose_z
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pose_x
       (sys::poke _pose_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_y
       (sys::poke _pose_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_z
       (sys::poke _pose_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pose_x
     (setq _pose_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_y
     (setq _pose_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_z
     (setq _pose_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass turn_on_wheeltec_robot::C_poseResponse
  :super ros::object
  :slots (_success ))

(defmethod turn_on_wheeltec_robot::C_poseResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turn_on_wheeltec_robot::C_pose
  :super ros::object
  :slots ())

(setf (get turn_on_wheeltec_robot::C_pose :md5sum-) "c5d18bef2da6b3fa66babcd6adf5167e")
(setf (get turn_on_wheeltec_robot::C_pose :datatype-) "turn_on_wheeltec_robot/C_pose")
(setf (get turn_on_wheeltec_robot::C_pose :request) turn_on_wheeltec_robot::C_poseRequest)
(setf (get turn_on_wheeltec_robot::C_pose :response) turn_on_wheeltec_robot::C_poseResponse)

(defmethod turn_on_wheeltec_robot::C_poseRequest
  (:response () (instance turn_on_wheeltec_robot::C_poseResponse :init)))

(setf (get turn_on_wheeltec_robot::C_poseRequest :md5sum-) "c5d18bef2da6b3fa66babcd6adf5167e")
(setf (get turn_on_wheeltec_robot::C_poseRequest :datatype-) "turn_on_wheeltec_robot/C_poseRequest")
(setf (get turn_on_wheeltec_robot::C_poseRequest :definition-)
      "float64 pose_x
float64 pose_y
float64 pose_z
float64 theta

---
bool success


")

(setf (get turn_on_wheeltec_robot::C_poseResponse :md5sum-) "c5d18bef2da6b3fa66babcd6adf5167e")
(setf (get turn_on_wheeltec_robot::C_poseResponse :datatype-) "turn_on_wheeltec_robot/C_poseResponse")
(setf (get turn_on_wheeltec_robot::C_poseResponse :definition-)
      "float64 pose_x
float64 pose_y
float64 pose_z
float64 theta

---
bool success


")



(provide :turn_on_wheeltec_robot/C_pose "c5d18bef2da6b3fa66babcd6adf5167e")


