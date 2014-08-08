(when (< emacs-major-version 24)
  (require-package 'color-theme))

(load "~/.emacs.d/themes/color-theme-molokai.el")
(color-theme-molokai)
;;font
(set-default-font "Monospace-12")
(set-fontset-font "fontset-default" 'unicode '("WenQuanYi Micro Hei" . "unicode-ttf"))
(setq-default cursor-type 'bar)


(provide 'init-themes)
