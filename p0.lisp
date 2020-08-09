; 7 meta operator
; quote, atom, eq, car, cdr, cons, cond
;
; 't, t, T 表示 True。
; nil, NIL 表示 False。
; () 空表似乎也是表示 False。
; 表，列表，list 说的是同一个东西。
; 空表，也就是符号 ()，表示没有元素的 list。


; 1. quote
; @brief: (quote x) 返回 x，简写为 'x
; @example:
; > (quote a)
; a
; > 'a
; a
; > (quote (a b c))
; (a b c)


; 2. atom
; @brief: (atom x)
;         如果 x 是原子或空表，返回 T
;         否则返回 NIL
; @example:
; > (atom 'a)
; T
; > (atom '())
; T
; > (atom ())
; T
; > (atom T)
; T
; > (atom 'T)
; T
; > (atom '(a b c))
; NIL
;
; @example 2: 这个例子中的 (atom 'a) 会被求值。
; > (atom (atom 'a))
; T
;
; @example 3: 这个例子中的 '(atom 'a) 表示的是一个表，这个表里面有两个元素。
; > (atom '(atom 'a))
; NIL
;
; @example 4:
; > (atom 'a)
; T
; > (atom (quote a))
; T
; > (atom '(quote a))
; NIL

; @example 5:
; > (car '('a 'b 'c))
; 'A
; > (car '(a b c))
; A
; > (atom (car '('a 'b 'c)))
; NIL
; > (atom (car '(a b c)))
; T
; > (atom 'a)
; T
; > (atom a)
; *** - SYSTEM::READ-EVAL-PRINT: variable A has no value


; 3. eq
; @brief: (eq x y)
;         如果 x 和 y 的值是同一个原子或都是空表，返回 T
;         否则返回 NIL
; @example:
; > (eq 'a 'a)
; T
; > (eq 'a 'b)
; NIL
; > (eq '() '())
; T
;
; @example 2: 下面这两个例子可以看到相同的表也是返回 NIL 的。
; > (eq '(a) '(a))
; NIL
; > (eq '(a b c) '(a b c))
; NIL


; 4. car
; @brief: (car x) 返回列表 x 的第一个元素。
;         x 的值必须是一个列表
; @example:
; > (car '(a b c))
; A
;
; @example 2: 可以看到 'a 不是一个列表，语法报错了。
; > (car 'a)
; *** - CAR: A is not a list
; The following restarts are available:
; ABORT          :R1      Abort main loop
; Break 1 [15]> abort


; 5. cdr
; @brief: (cdr x) 返回列表 x 第一个元素之后的所有元素组成的列表。
;         x 的值必须是一个列表
;         注意：car 返回的是元素，而 cdr 返回的是列表
; @example:
; > (cdr '(a b c))
; (B C)
; @example 2: 可以看到，即使只要一个剩余元素，也是作为列表返回的。
; > (cdr '(a b))
; (B)


; 6. cons
; @brief: (cons x y) 把 x 作为一个元素添加到列表 y 的开头，并返回新的列表。
; @example
; > (cons 'a '(b c))
; (A B C)
; > (cons 'a (cons 'b (cons 'c '())))
; (A B C)
; > (car (cons 'a '(b c)))
; A
; > (cdr (cons 'a '(b c)))
; (B C)
;
; @example 2: '(a b c) 整个列表作为一个元素被添加到了第一个元素。
; > (cons '(a b c) '(x y z))
; ((A B C) X Y Z)
;
; @example 3: 这个还不知道什么意思？？？
; > (cons 'a 'b)
; (A . B)


; 7. cond
; @brief: (cond (p1 ... e1)
;               (p2 ... e2)
;               ...
;               (pn ... en))
;         按顺序对 p1, p2, p3 ... pn 进行求值，直到出现值为 T 的情况时，
;         就把对应的 e 表达式进行求值，并作为整个 cond 的返回值。
;
; @example:
; > (cond ((eq 'a 'b) 'first)
;         ((atom 'a) 'second))
; SECOND
;
; @example 2: 模拟实现 if x then a else b
; > (cond ((atom 'a) 'first)
;         ('t 'else))
; FIRST
; > (cond ((atom '(a b)) 'first)
;         ('t 'else))
; ELSE

