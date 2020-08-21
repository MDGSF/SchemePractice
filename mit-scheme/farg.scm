; hello with name
(define hello 
  (lambda (name)
	(string-append "hello " name "!")))

(define sum3
  (lambda (a b c)
	(+ a b c)))

; the same as hello, just syntax sugar
(define (hello2 name)
  (string-append "hello " name "!"))

; the same as sum3, just syntax sugar
(define (sum3_2 a b c)
  (+ a b c))

(define (addone n)
  (+ n 1))

(define (subone n)
  (- n 1))

