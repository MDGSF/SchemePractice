# mit-scheme

## cd and load

```
$ scheme

1 ]=> (cd "/home/huangjian/git/huangjian/SchemePractice/mit-scheme")

1 ]=> (load "hello.scm")
```

## let and lambda

```scheme
(let ((p1 v1) (p2 v2) ...) exp1 exp2 ...)
```

等价于：

```scheme
((lambda (p1 p2 ...)
    exp1 exp2 ...) v1 v2)
```
