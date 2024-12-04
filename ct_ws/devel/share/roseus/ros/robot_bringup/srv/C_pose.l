;; Auto-generated. Do not edit!


(when (boundp 'robot_bringup::C_pose)
  (if (not (find-package "ROBOT_BRINGUP"))
    (make-package "ROBOT_BRINGUP"))
  (shadow 'C_pose (find-package "ROBOT_BRINGUP")))
(unless (find-package "ROBOT_BRINGUP::C_POSE")
  (make-package "ROBOT_BRINGUP::C_POSE"))
(unless (find-package "ROBOT_BRINGUP::C_POSEREQUEST")
  (make-package "ROBOT_BRINGUP::C_POSEREQUEST"))
(unless (find-package "ROBOT_BRINGUP::C_POSERESPONSE")
  (make-package "ROBOT_BRINGUP::C_POSERESPONSE"))

(in-package "ROS")





(defclass robot_bringup::C_poseRequest
  :super ros::object
  :slots (_pose_x _pose_y _pose_z _theta ))

(defmethod robot_bringup::C_poseRequest
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

(defclass robot_bringup::C_poseResponse
  :super ros::object
  :slots (_success ))

(defmethod robot_bringup::C_poseResponse
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

(defclass robot_bringup::C_pose
  :super ros::object
  :slots ())

(setf (get robot_bringup::C_pose :md5sum-) "c5d18bef2da6b3fa66babcd6adf5167e")
(setf (get robot_bringup::C_pose :datatype-) "robot_bringup/C_pose")
(setf (get robot_bringup::C_pose :request) robot_bringup::C_poseRequest)
(setf (get robot_bringup::C_pose :response) robot_bringup::C_poseResponse)

(defmethod robot_bringup::C_poseRequest
  (:response () (instance robot_bringup::C_poseResponse :init)))

(setf (get robot_bringup::C_poseRequest :md5sum-) "c5d18bef2da6b3fa66babcd6adf5167e")
(setf (get robot_bringup::C_poseRequest :datatype-) "robot_bringup/C_poseRequest")
(setf (get robot_bringup::C_poseRequest :definition-)
      "float64 pose_x
float64 pose_y
float64 pose_z
float64 theta

---
bool success


")

(setf (get robot_bringup::C_poseResponse :md5sum-) "c5d18bef2da6b3fa66babcd6adf5167e")
(setf (get robot_bringup::C_poseResponse :datatype-) "robot_bringup/C_poseResponse")
(setf (get robot_bringup::C_poseResponse :definition-)
      "float64 pose_x
float64 pose_y
float64 pose_z
float64 theta

---
bool success


")



(provide :robot_bringup/C_pose "c5d18bef2da6b3fa66babcd6adf5167e")


