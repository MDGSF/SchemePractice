(define (my-string->integer str)
  (char2int (string->list str) 0))

(define (char2int ls n)
  (if (null? ls)
	n
	(char2int (cdr ls)
			  (+ (* n 10)
				 (- (char->integer (car ls)) 48)))))


(define (my-string->integer-let str)
  (let loop((ls0 (string->list str)) (n 0))
	(if (null? ls0)
	  n
	  (loop (cdr ls0)
			(+ (* n 10)
			   (- (char->integer (car ls0)) 48))))))


(define (my-string->integer-letrec str)
  (letrec ((iter (lambda (ls0 n)
				   (if (null? ls0)
					 n
					 (iter (cdr ls0)
						   (+ (* n 10)
							  (- (char->integer (car ls0)) 48)))))))
	(iter (string->list str) 0)))


(define (my-string->integer-do str)
  (do ((ls0 (string->list str) (cdr ls0))
	   (n 0 (+ (* n 10)
			   (- (char->integer (car ls0)) 48))))
	((null? ls0) n)))

