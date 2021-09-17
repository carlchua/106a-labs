;; Auto-generated. Do not edit!


(when (boundp 'my_chatter::TimestampString)
  (if (not (find-package "MY_CHATTER"))
    (make-package "MY_CHATTER"))
  (shadow 'TimestampString (find-package "MY_CHATTER")))
(unless (find-package "MY_CHATTER::TIMESTAMPSTRING")
  (make-package "MY_CHATTER::TIMESTAMPSTRING"))

(in-package "ROS")
;;//! \htmlinclude TimestampString.msg.html


(defclass my_chatter::TimestampString
  :super ros::object
  :slots (_string_type _float_type ))

(defmethod my_chatter::TimestampString
  (:init
   (&key
    ((:string_type __string_type) "")
    ((:float_type __float_type) 0.0)
    )
   (send-super :init)
   (setq _string_type (string __string_type))
   (setq _float_type (float __float_type))
   self)
  (:string_type
   (&optional __string_type)
   (if __string_type (setq _string_type __string_type)) _string_type)
  (:float_type
   (&optional __float_type)
   (if __float_type (setq _float_type __float_type)) _float_type)
  (:serialization-length
   ()
   (+
    ;; string _string_type
    4 (length _string_type)
    ;; float64 _float_type
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _string_type
       (write-long (length _string_type) s) (princ _string_type s)
     ;; float64 _float_type
       (sys::poke _float_type (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _string_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _string_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _float_type
     (setq _float_type (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get my_chatter::TimestampString :md5sum-) "9a024ad7b3a7426fe7302b1422c7a7a9")
(setf (get my_chatter::TimestampString :datatype-) "my_chatter/TimestampString")
(setf (get my_chatter::TimestampString :definition-)
      "string string_type
float64 float_type

")



(provide :my_chatter/TimestampString "9a024ad7b3a7426fe7302b1422c7a7a9")


