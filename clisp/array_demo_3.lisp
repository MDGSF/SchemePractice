(setq a (make-array '(4 3)))

(dotimes (i 4)
  (dotimes (j 3)
    (setf (aref a i j) (list i 'x j '= (* i j)))))

(dotimes (i 4)
  (dotimes (j 3)
    (print (aref a i j))))

