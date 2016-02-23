# The Initial Configuration And the Chinese Input Support

## The Initial Configuration

The initial configurations are primary, only the most basic things are included to provide a better appearence of user interface.

```
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (misterioso)))
 '(display-time-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 ```

## The Chinese Input Method

At the very beginning, I failed to input Chinese in Emacs because Fcitx does not switch to Chinese after I press the Shift+Space which is my shortcut to switch input method and avoids the C+Space conflict problem. Then I begin to search for Chinese input method inside emacs, which are not as good as Google Pinyin in Fcitx. One day I was using Emacs under Windows 10, the input method was triggered properly, and I begin to gain confidence in using Fcitx again, and finally find that I have to use LC_CTYPE=zh.CN locale to remind Emacs of the existence of Fcitx. Now I add a line in my .bashrc file to solve the problem:

```
# alias to input Chinese in Emacs
alias emacs='LC_CTYPE=zh_CN.UTF-8 emacs'
```
