(make-package :tom)
(make-package :dick)
(make-package :harry)

(in-package tom)
(defun hello()
  (write-line "Hello! This is Tom's Tutorials Point"))
(hello)


(in-package dick)
(defun hello()
  (write-line "Hello! This is Dick's Tutorials Point"))
(hello)

(in-package harry)
(defun hello()
  (write-line "Hello! This is Harry's Tutorials Point"))
(hello)

(in-package tom)
(hello)
(in-package dick)
(hello)
(in-package harry)
(hello)

(delete-package tom)
(in-package tom)
(hello)
