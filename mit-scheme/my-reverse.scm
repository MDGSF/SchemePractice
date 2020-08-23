(define (my-reverse ls)
  (my-reverse-rec ls '()))

(define (my-reverse-rec ls0 ls1)
  (if (null? ls0)
	ls1
	(my-reverse-rec (cdr ls0) (cons (car ls0) ls1))))


(define (my-reverse-let ls)
  (let loop((ls0 ls) (ls1 ()))
	(if (null? ls0)
	  ls1
	  (loop (cdr ls0) (cons (car ls0) ls1)))))


(define (my-reverse-letrec ls)
  (letrec ((iter (lambda (ls0 ls1)
				   (if (null? ls0)
					 ls1
					 (iter (cdr ls0) (cons (car ls0) ls1))))))
	(iter ls ())))


(define (my-reverse-do ls)
  (do ((ls0 ls (cdr ls0)) (ls1 () (cons (car ls0) ls1)))
	((null? ls0) ls1)))

