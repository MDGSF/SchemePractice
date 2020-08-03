; You can use `return-from` special operator to
; immediately return any value from the function.
(defun myfunc (num)
  (return-from myfunc 10)
  num
)
(write (myfunc 20))
