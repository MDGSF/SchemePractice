(define (filter-10-100 ls)
  (delete-matching-items ls (lambda (x) (<= 10 x 100))))
