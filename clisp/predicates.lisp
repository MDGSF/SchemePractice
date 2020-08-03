; `atom` It takes one argument and returns t if the argument is an atom or nil
;        if otherwise.
; `equal` It takes two arguments and returns t if they are structurally equal
;         or nil otherwise.

(write (atom 'abcd)) ; T
(terpri)
(write (equal 'a 'b)) ; NIL
(terpri)
(write (evenp 10)) ; T
(terpri)
(write (evenp 7)) ; NIL
(terpri)
(write (oddp 7)) ; T
(terpri)
(write (zerop 0.0000000001)) ; NIL
(terpri)
(write (eq 3 3.0)) ; NIL
(terpri)
(write (equal 3 3.0)) ; NIL
(terpri)
(write (null nil)) ; T
