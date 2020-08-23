(define (member proc obj ls)
  (cond
	((null? ls) #f)
	((proc obj (car ls)) ls)
	(else (member proc obj (cdr ls)))))
