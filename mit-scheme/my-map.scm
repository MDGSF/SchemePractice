(define (my-map fn . ls)
  (letrec ((iter (lambda (fn ls)
				   (if (null? ls)
					 '()
					 (cons (fn (car ls))
						   (iter fn (cdr ls))))))
		   (map-rec (lambda (fn ls)
					  (if (memq '() ls)
						'()
						(cons (apply fn (iter car ls))
							  (map-rec fn (iter cdr ls)))))))
	(map-rec fn ls)))

(my-map + '(1 2 3) '(10 20 30) '(100 200 300))