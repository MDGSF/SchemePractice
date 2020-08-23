(define (list-index ls x)
  (define (list-index-inner ls x i)
	(if (null? ls)
	  #f
	  (if (equal? x (car ls))
		i
		(list-index-inner (cdr ls) x (+ i 1)))))
  (list-index-inner ls x 0))

(define (position ls x)
  (let loop((ls0 ls) (i 0))
	(cond
	  ((null? ls0) #f)
	  ((eqv? x (car ls0)) i)
	  (else (loop (cdr ls0) (1+ i))))))
