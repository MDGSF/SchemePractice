(defun my-library (title author rating availability)
  (list :title title :author author :rating rating :availability availability))

(write (getf (my-library "Hunger Game" "Collins" 9 t) :title))
