(defun cubeMyList(lst)
  (mapcar #'(lambda(x) (* x x x)) lst)
)
(write (cubeMyList '(2 3 4 5 6 7 8 9)))
