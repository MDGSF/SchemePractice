; or 具有任意个参数，并从左到右对它们求值。
; 它返回第一个不是值 #f 的参数，而剩余的参数不会被求值。
; 如果所有的参数的值都是 #f 的话，则返回最后一个参数的值。

(or #f 0)

(or 1 2 3)

(or #f 1 2 3)

(or #f #f #f)
