(setq a 10)
(setq b 20)
(format t "~% A = ~a" a)
(format t "~% B = ~a" b)
(format t "~% A = B is ~a" (= a b))
(format t "~% A /= B is ~a" (/= a b))
(format t "~% A > B is ~a" (> a b))
(format t "~% A < B is ~a" (< a b))
(format t "~% A >= B is ~a" (>= a b))
(format t "~% A <= B is ~a" (<= a b))
(format t "~% Max of A and B is ~a" (max a b))
(format t "~% Min of A and B is ~a" (min a b))
