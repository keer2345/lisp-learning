<center>

**[Emacs for Programming Languages course on Coursera](https://tuhdo.github.io/emacs-for-proglang.html)**

</center>


<!-- vim-markdown-toc GFM -->

* [Before using Emacs](#before-using-emacs)
    * [Emacs and SML in Linux](#emacs-and-sml-in-linux)
    * [Optional but recommended: Swap Control and Capslock](#optional-but-recommended-swap-control-and-capslock)
    * [Optional: changing Emacs look and feel](#optional-changing-emacs-look-and-feel)
* [General basic Emacs commands](#general-basic-emacs-commands)
    * [Command](#command)
    * [Emacs Key Notation](#emacs-key-notation)
    * [Some basic commands](#some-basic-commands)
        * [Basic editing commands](#basic-editing-commands)
* [Commands for SML](#commands-for-sml)
* [Commands for Racket](#commands-for-racket)
* [Geiser commands](#geiser-commands)
    * [What is Geiser?](#what-is-geiser)

<!-- vim-markdown-toc -->

# Before using Emacs
## Emacs and SML in Linux
安装 emacs 和 smlnj:
```
yay emacs
yay smlnj
```
克隆现成的 Emacs 配置：
```
git clone https://github.com/tuhdo/emacs-proglang.git ~/.emacs.d
```

## Optional but recommended: Swap Control and Capslock
Linux:
配置文件以交换 Ctrl 和 Capslock 键（`.bashrc`, `.zshrc`... ）
```
/usr/bin/setxkbmap -option "ctrl:swapcaps"
```
## Optional: changing Emacs look and feel
切换主题 `M-x`
```
customize-theme
```

可以在以下网站预览主题：
- http://pawelbx.github.io/emacs-theme-gallery/
- https://emacsthemes.com/

作者推荐的主题是 `lush-theme`，而我用的主题是 `color-theme-sanityinc-tomorrow`。

# General basic Emacs commands
在 [Emacs Mini Manual (PART 1) - THE BASICS](https://tuhdo.github.io/emacs-tutor.html) 中已经介绍了一些常用的 Emacs 知识，建议当做想小册子随时翻看。
## Command
在 Emacs 中，每次交互都是执行一个函数，Emacs 中有两种类型的函数（*functions*）：
- **Normal functions**: 这些函数类似编程语言，用于实现 Emacs 的特性，用户不需要关心它们，除非想修改一些东西。
- **Commands**: 它类似函数，但是有交互（*interactive*），意思是命令（command）供用户使用。

`M-x` 就是 `execute-extended-command`

## Emacs Key Notation
键绑定有一些默认的规则：
- `C-x` 开头的默认是 Emacs 的全局绑定
- `C-c` 开头的默认是用户自定义的
- `C-u` 用于改变行为的命令，就是说命令的执行依赖于你按了多少次 `C-u`，大多是时候你只按一次 `C-u`
- `C-<number>`，类似 `C-1`, `C-2` ... ，就像 `C-u`，通过一系列命令，由数组指定你想重复噶命令多少次，比如 `C-u 8 j`

## Some basic commands
### Basic editing commands
- `C-d` 删除字符
- `C-S-DEL` or `C-a k k` 删除整行
- `M-d` 删除词语
- `M-DEL` 删除前面的词
- `M-\` 删除空格
- `M-SPC` 删除多于的空格，只留一个
- `C-k` 删除至行尾
- `M-k` 删除句子
- `C-/` undo
- `C-?` redo

# Commands for SML
# Commands for Racket
- [安装Emacs并设置racket环境](https://www.cnblogs.com/invoker-/p/8997881.html)
- [emacs搭建racket开发环境](https://www.cnblogs.com/gccbuaa/p/7098728.html)

# Geiser commands
## What is Geiser?
