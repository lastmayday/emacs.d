(global-set-key (kbd "M-/") 'hippie-expand)

(setq dcsh-command-list '("all_registers"
                              "check_design" "check_test" "compile" "current_design"
                              "link" "uniquify"
                              "report_timing" "report_clocks" "report_constraint"
                              "get_unix_variable" "set_unix_variable"
                              "set_max_fanout"
                              "report_area" "all_clocks" "all_inputs" "all_outputs"))

    (defun he-dcsh-command-beg ()
      (let ((p))
        (save-excursion
          (backward-word 1)
          (setq p (point)))
        p))

    (defun try-expand-dcsh-command (old)
      (unless old
        (he-init-string (he-dcsh-command-beg) (point))
        (setq he-expand-list (sort
                              (all-completions he-search-string (mapcar 'list dcsh-command-list))
                              'string-lessp)))
      (while (and he-expand-list
              (he-string-member (car he-expand-list) he-tried-table))
        (setq he-expand-list (cdr he-expand-list)))
      (if (null he-expand-list)
          (progn
            (when old (he-reset-string))
            ())
        (he-substitute-string (car he-expand-list))
        (setq he-tried-table (cons (car he-expand-list) (cdr he-tried-table)))
        (setq he-expand-list (cdr he-expand-list))
        t))

(setq hippie-expand-try-functions-list
      '(try-complete-file-name-partially
        try-complete-file-name
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill))

(provide 'init-hippie-expand)
