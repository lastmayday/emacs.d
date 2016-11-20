(when (< emacs-major-version 24)
  (require-package 'color-theme))

(load "~/.emacs.d/themes/color-theme-molokai.el")
(color-theme-molokai)
;;font
;;(set-default-font "Monospace-12")
(set-frame-font "DejaVu Sans Mono-14")
;;(set-fontset-font "fontset-default" 'unicode '("WenQuanYi Micro Hei" . "unicode-ttf"))
(set-fontset-font "fontset-default" 'han "WenQuanYi Micro Hei")
(setq-default cursor-type 'bar)

(set-frame-parameter (selected-frame) 'alpha '(90 . 50))
(add-to-list 'default-frame-alist '(alpha . (90 . 50)))

(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
                    ((numberp (cdr alpha)) (cdr alpha))
                    ;; Also handle undocumented (<active> <inactive>) form.
                    ((numberp (cadr alpha)) (cadr alpha)))
              100)
         '(90 . 50) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

(provide 'init-themes)
