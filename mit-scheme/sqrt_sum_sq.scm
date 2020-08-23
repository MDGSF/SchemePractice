(define (sqrt-sum-sq ls)
  (sqrt (reduce + 0 (map (lambda (x) (* x x)) ls))))

