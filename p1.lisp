; @brief: substitue y as x in list z.
; @param x: expression
; @param y: atom
; @param z: list
; @return new list
; @example:
; > (write (subst. 'm 'b '(a b (a b c) d)))
; (A M (A M C) D)
(defun subst. (x y z)
  (cond ((atom z)
         (cond ((eq z y) x)
               ('t z)))
        ('t (cons (subst x y (car z))
                  (subst x y (cdr z))))))

