(define (sqrt-sum-sq ls)
  (sqrt (reduce + 0 (map (lambda (x) (* x x)) ls))))


(define (sqrt-sum-sq-a ls)
  (sqrt (apply + (map (lambda (x) (* x x)) ls))))
