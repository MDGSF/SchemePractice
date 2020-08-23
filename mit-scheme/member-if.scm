(define (member-if proc ls)
  (cond
	((null? ls) #f)
	((proc (car ls)) ls)
	(else (member-if proc (cdr ls)))))
