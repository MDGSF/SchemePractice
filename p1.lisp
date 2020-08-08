; 函数名字后面加了个点，是为了避免与现有的函数冲突

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

; cxr
; @brief: x can be a or d
;    car
;    cdr
;    cadr: (cadr e) => (car (cdr e))
;    caddr: (caddr e) => (car (cdr (cdr e)))
;    cdar: (cdar e) => (cdr (car e))
;    cddar: (cddar e) => (cdr (cdr (car e)))
; @example
; > (caar. '((a b) (c d) e))
; A
; > (cadr '((a b) (c d) e))
; (C D)
; > (cadar. '((a b) (c d) e))
; B
; > (caddr '((a b) (c d) e))
; E
; > (cdar '((a b) (c d) e))
; (B)
(defun caar. (x)
  (car (car x)))
(defun cadr. (x)
  (car (cdr x)))
(defun caaar. (x)
  (car (car (car x))))
(defun caadr. (x)
  (car (car (cdr x))))
(defun cadar. (x)
  (car (cdr (car x))))
(defun caddr. (x)
  (car (cdr (cdr x))))
(defun cdar. (x)
  (cdr (car x)))
(defun cddr. (x)
  (cdr (cdr x)))


; list
; @brief: 我们用 (list e1 e2 ... en) 来表示 (cons e1 (cons e2 ...(cons en '())))
; @example:
; > (cons 'a (cons 'b (cons 'c '())))
; (A B C)
; > (list 'a 'b 'c)
; (A B C)


; null.
; @brief: (null. x)
;         如果 x 是空表，返回 T
;         否则返回 NIL
; @example:
; > (null. 'a)
; NIL
; > (null. '())
; T
(defun null. (x)
  (eq x '()))


; and.
; @brief: (and. x y)
;         如果 x 和 y 都是 T，则返回 T
;         否则返回 NIL
; @example:
; > (and. (atom 'a) (eq 'a 'a))
; T
; > (and. (atom 'a) (eq 'a 'b))
; NIL
(defun and. (x y)
  (cond (x (cond (y 't) ('t '())))
        ('t '())))


; not.
; @brief: (not. x) 取反
;         如果 x 是 NIL，返回 T
;         如果 x 是 T，则返回 NIL
; @example:
; > (not. (eq 'a 'a))
; NIL
; > (not. (eq 'a 'b))
; T
(defun not. (x)
  (cond (x '())
        ('t 't)))


; append.
; @brief: (append. x y) 连接两个列表 x 和 y，返回新的列表。
; @example:
; > (append. '(a b) '(c d))
; (A B C D)
; > (append. '() '(c d))
; (C D)
(defun append. (x y)
  (cond ((null. x) y)
        ('t (cons (car x)
                  (append. (cdr x) y)))))


; pair.
; @brief: (pair. x y)
;         x 和 y 是两个相同长度的表
;         返回一个由 2 个元素表构成的表
;         2 个元素表是相应位置的 x 和 y 的元素对
; @example:
; > (pair. '(x y z) '(a b c))
; ((X A) (Y B) (Z C))
(defun pair. (x y)
  (cond ((and. (null. x) (null. y)) '())
        ((and. (not. (atom x)) (not. (atom y)))
         (cons (list (car x) (car y))
               (pair. (cdr x) (cdr y))))))


; assoc.
; @brief: (assoc. x y)
;         x 是一个元素
;         y 是一个列表，列表中的元素是 2 个元素构成的表，我命名为 pair(0 1)。
;         在 y 中查找，如果 pair[0] == x，则返回 pair[1]
; @example:
; > (assoc. 'x '((x a) (y b)))
; A
; > (assoc. 'x '((x new) (x a) (y b)))
; NEW
(defun assoc. (x y)
  (cond ((eq (caar y) x) (cadar y))
        ('t (assoc. x (cdr y)))))

