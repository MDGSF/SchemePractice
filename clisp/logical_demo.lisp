(setq a 10)
(setq b 20)
(format t "~% a = ~a" a)
(format t "~% b = ~a" b)

; `and` It takes any number of arguments. The
; arguments are evaluated left to right. If all
; arguments evaluate to non-nil, then the
; value of the last argument is returned.
; Otherwise nil is returned.
(format t "~% A and B is ~a" (and a b))
(format t "~% B and A is ~a" (and b a))
(format t "~% A or B is ~a" (or a b))
(format t "~% not A is ~a" (not a))

(terpri)
(setq a nil)
(setq b 5)
(format t "~% a = ~a" a)
(format t "~% b = ~a" b)

(format t "~% A and B is ~a" (and a b))
(format t "~% B and A is ~a" (and b a))
(format t "~% A or B is ~a" (or a b))
(format t "~% not A is ~a" (not a))

(terpri)
(setq a nil)
(setq b 0)
(format t "~% a = ~a" a)
(format t "~% b = ~a" b)

(format t "~% A and B is ~a" (and a b))
(format t "~% B and A is ~a" (and b a))
(format t "~% A or B is ~a" (or a b))
(format t "~% not A is ~a" (not a))

(terpri)
(setq a 10)
(setq b 0)
(setq c 30)
(setq d 40)
(format t "~% a = ~a" a)
(format t "~% b = ~a" b)
(format t "~% c = ~a" c)
(format t "~% d = ~a" d)

(format t "~% and a b c d is ~a" (and a b c d))
(format t "~% or a b c d is ~a" (or a b c d))

(terpri)
(setq a 10)
(setq b 20)
(setq c nil)
(setq d 40)
(format t "~% a = ~a" a)
(format t "~% b = ~a" b)
(format t "~% c = ~a" c)
(format t "~% d = ~a" d)

(format t "~% and a b c d is ~a" (and a b c d))
(format t "~% or a b c d is ~a" (or a b c d))


