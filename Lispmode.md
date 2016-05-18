Configuring the LISP interpreter
================================

The lisp interpreter in my PC is clisp while the default command in Emacs is ```lisp```. So I have to
change the variable ```inferior-lisp-program``` into ```clisp```. This can be done in two ways. One
is turning to the scratch buffer and type

```(setq inferior-lisp-program "clisp")```

and Emacs would treat ```clisp``` as the default interpreter for LISP. ```setq``` is a special form
with ```inferior-lisp-program``` as the symbol and ```"clisp"``` as the form. The other way of doing
this is to add one data to the command ```custom-set-variables``` in ```.emacs``` file. It looks like:

```
(custom-set-variables
 '(inferior-lisp-program "clisp"))
```
