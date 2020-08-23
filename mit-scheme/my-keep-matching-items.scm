(define (my-keep-matching-items ls fn)
  (cond
	((null? ls) '())
	((fn (car ls))
	 (cons (car ls) (my-keep-matching-items (cdr ls) fn)))
	(else (my-keep-matching-items (cdr ls) fn))))
		
