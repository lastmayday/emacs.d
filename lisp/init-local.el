(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(setq frame-title-format "%b@lastmayday")
(setq x-select-enable-clipboard t)
(setq column-number-mode t)
(global-font-lock-mode 1)
(setq default-tab-width 4)
(setq c-basic-offset 4)
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)
(mouse-avoidance-mode 'animate)
(blink-cursor-mode -1)
(transient-mark-mode 1)
(show-paren-mode 1)
(mouse-wheel-mode t)
(setq auto-save-mode t)
(setq visible-bell 0)
(setq version-control t)
(setq kept-old-versions 2)
(setq kept-new-versions 5)
(setq delete-old-versions t)
(setq backup-directory-alist '(("." . "~/.emacs.tmp")))
(setq backup-by-copying t)
(setq scroll-step 1
       scroll-margin 3
       scroll-conservatively 10000)
(setq-default kill-whole-line t)
(setq kill-ring-max 200)
(setq inhibit-startup-message t)
(setq gnus-inhibit-startup-message t)
(global-linum-mode t)

(require-package 'ecb)
(require 'ecb-autoloads)
(setq ecb-auto-activate 1)
(setq stack-trace-on-error t)
(setq ecb-auto-activate t ecb-tip-of-the-day nil)
(custom-set-variables
 '(ecb-options-version "2.40"))
(custom-set-faces
 )
 (custom-set-variables
'(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1)))
(ecb-activate)


(require-package 'undo-tree)


(require-package 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(provide 'init-local)