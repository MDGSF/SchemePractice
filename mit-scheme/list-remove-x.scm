(define (list-remove-x ls x)
  (cond 
	((null? ls) '())
	((equal? x (car ls)) (cdr ls))
	(else (cons (car ls) (list-remove-x (cdr ls) x)))))

(define (remove ls x)
  (if (null? ls)
	'()
	(let ((h (car ls)))
	  ((if (eqv? x h)
		 (lambda (y) y)
		 (lambda (y) (cons h y)))
	   (remove (cdr ls) x)))))

(define (remove-let-loop ls x)
  (let loop((ls0 ls) (ls1 ()))
	(if (null? ls0)
	  (reverse ls1)
	  (loop 
		(cdr ls0)
		(if (eqv? x (car ls0))
		  ls1
		  (cons (car ls0) ls1))))))

