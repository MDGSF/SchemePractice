(define (my-sum ls)
  (if (null? ls)
	0
	(+ (car ls) (my-sum (cdr ls)))))

(define (my-sum-tail ls)
  (my-sum-rec ls 0))

(define (my-sum-rec ls n)
  (if (null? ls)
	n
	(my-sum-rec (cdr ls) (+ n (car ls)))))

(define (my-sum-let ls)
  (let loop((ls0 ls) (n 0))
	(if (null? ls0)
	  n
	  (loop (cdr ls0) (+ (car ls0) n)))))

(define (my-sum-letrec ls)
  (letrec ((iter (lambda (ls0 n)
				   (if (null? ls0)
					 n
					 (iter (cdr ls0) (+ (car ls0) n))))))
	(iter ls 0)))


(define (my-sum-do ls)
  (do ((ls0 ls (cdr ls0)) (n 0 (+ n (car ls0))))
	((null? ls0) n)))


