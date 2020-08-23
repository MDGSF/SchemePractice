(define (score n)
  (cond
	((>= n 80) 'A)
	((<= 60 n 79) 'B)
	((<= 40 n 59) 'C)
	(else 'D)))
