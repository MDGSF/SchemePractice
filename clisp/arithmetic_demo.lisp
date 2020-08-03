(setq a 10)
(setq b 20)
(format t "~% A + B = ~d" (+ a b))
(format t "~% A - B = ~d" (- a b))
(format t "~% A * B = ~d" (* a b))
(format t "~% A / B = ~d" (/ a b))
(format t "~% Increment A by 3 = ~d" (incf a 3))
(format t "~% Decrement A by 4 = ~d" (decf a 4))

(write-line " ")

(setq c 3)
(setq d 8)
(format t "~% c = ~d d = ~d" c d)
(format t "~% c % d = ~f ~d" (mod c d) (rem c d))

