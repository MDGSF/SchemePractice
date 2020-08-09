(setq tr '((1 2 (3 4 5) ((7 8) (7 8 9)))))
(write tr)
(terpri)

(setq trs (subst 7 1 tr))
(write trs)
(terpri)
