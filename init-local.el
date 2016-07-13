;;; package --- AUCTeX chinese-pyim chinese-fonts-setup
;;; Commentary:
;;; Code:
(require-package 'auctex)
(require-package 'company-auctex)
(require-package 'chinese-fonts-setup)
(require-package 'chinese-pyim)
;; (require-package 'column-marker)

(require 'chinese-pyim)
(require 'chinese-fonts-setup)
;; (require 'column-marker)

(setq default-input-method "chinese-pyim")
(global-set-key (kbd "C-.") 'pyim-toggle-full-width-punctuation)

;; Set up LaTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (setq TeX-auto-untabify t     ; remove all tabs before saving
                  TeX-engine 'xetex       ; use xelatex default
                  TeX-show-compilation t) ; display compilation windows
            (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
            (setq TeX-save-query nil)
            (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))

;; (defun guess-TeX-master (filename)
;;   "Guess the master file for FILENAME from currently open .tex files."
;;   (let ((candidate nil)
;;         (filename (file-name-nondirectory filename)))
;;     (save-excursion
;;       (dolist (buffer (buffer-list))
;;         (with-current-buffer buffer
;;           (let ((name (buffer-name))
;;                 (file buffer-file-name))
;;             (if (and file (string-match "\\.tex$" file))
;;                 (progn
;;                   (goto-char (point-min))
;;                   (if (re-search-forward (concat "\\\\input{" filename "}") nil t)
;;                       (setq candidate file))
;;                   (if (re-search-forward (concat "\\\\include{" (file-name-sans-extension filename) "}") nil t)
;;                       (setq candidate file))))))))
;;     (if candidate
;;         (message "TeX master document: %s" (file-name-nondirectory candidate)))
;;     candidate))

;; (setq TeX-master (guess-TeX-master (buffer-file-name)))



(provide 'init-local)
;;; End
