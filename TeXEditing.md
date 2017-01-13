Writing LaTeX File in Emacs
===========================

The most important thing I find today is that tool bar in Emacs is a very
good component. It is too wrong to reject the utilization of mouse, and the
cooperation of tool bar and mouse will extremely increase efficiency.

AUCTeX is a tool that should be used together with tool bar. There are always
too much command to remember in any mode of Emacs, so the professional TeX
editors are tempting. The moment I open the tool bar, I find that all the
obstacles I feared have gone away, and I finaly managed to use the amazing
feature of AUCTeX.

The only thing to mention is that the default engine is not XeTeX, so Chinese
operation is awful, I just Googled this and add some thing to the ~/.emacs file:

```
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (imenu-add-menubar-index)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

```

And now I have a much better environment of LaTeX editing than LyX!
