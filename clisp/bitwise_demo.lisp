(setq a 60)
(setq b 13)

(format t "~% a = ~a (0011 1100)" a)
(format t "~% b = ~a (0000 1101)" b)
(format t "~% BITWISE AND of a and b is ~a" (logand a b))
(format t "~% BITWISE INCLUSIVE OR of a and b is ~a" (logior a b))
(format t "~% BITWISE EXCLUSIVE OR of a and b is ~a" (logxor a b))
(format t "~% A NOT B is ~a" (lognor a b))
(format t "~% A EAUIVALANCE B is ~a" (logeqv a b))

