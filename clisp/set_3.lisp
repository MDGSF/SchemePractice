(setq set1 (union '(a b c) '(d e f)))
(setq set2 (union '(#(a b) #(5 6 7) #(f h))
                  '(#(5 6 7) #(a b) #(g h))
                  :test-not #'mismatch))
(setq set3 (union '(#(a b) #(5 6 7) #(f h))
                  '(#(5 6 7) #(a b) #(g h))))

(write set1)
(terpri)
(write set2)
(terpri)
(write set3)
(terpri)

