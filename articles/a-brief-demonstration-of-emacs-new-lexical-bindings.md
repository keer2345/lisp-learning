
** [A brief demonstration of emacs new lexical bindings](http://technical-dresese.blogspot.com/2011/04/brief-demonstration-of-emacs-new.html)**

为了让 `lexical-binding` 起作用，需要将其设置为 `t` 。

这里是一些示范（ `M-x` **ielm** ）：

```lisp
ELISP> (setq lexical-binding t)
t
ELISP> (defun make-adder (base) (lambda (num) (+ num base)))
make-adder
ELISP> (setq x 1)
1
ELISP> (setq 1-adder (make-adder x))
(closure
 ((base . 1)
  t)
 (num)
 (+ num base))
ELISP> (funcall 1-adder 10)
11
ELISP> (funcall 1-adder 100)
101
ELISP> (setq x 100)
100
ELISP> (funcall 1-adder 100)
101
```

如果没有 `lexical-binding`, **x** 变量将是动态的，刚才后面的会话中将是增加 100 。事实上，如果我们试一试，我们到不了这一步。下面是没有 `lexical-binding` 的情形：

```lisp
ELISP> lexical-binding
nil
ELISP> (defun make-adder (base) (lambda (num) (+ num base)))
make-adder
ELISP> (setq x 1)
1
ELISP> (setq 1-adder (make-adder x))
(lambda
    (num)
    (+ num base))
ELISP> (funcall 1-adder 10)
*** Eval error *** Symbol's value as variable is void: base
```

发生了什么？注意我们没有使用 `lexical-binding`，获取不到闭包（closure）。相反，我们仅仅得到了一个引用 **num** 和 **base** 的函数，**num** 传递到函数中，但是 **base** 是动态变量，所以它在 emacs 中得以执行，而不是上下文内的**闭包**。

变量 **base** 并没有绑定到全局上下文，并会执行 *lambda*，而不是引用，emacs 在寻找 **base** 变量，但没有找到，就抛出错误。

在 lexical-binding 中发生了什么？事实上，我们看到了闭包的返回：
```lisp
(closure
 ((base . 1)
  t)
 (num)
 (+ num base))
```


闭包展示了 **base** 始终绑定为 `1` 。

