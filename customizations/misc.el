;; Miscellaneous settings file.


;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; Org mode
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-log-done t)

;; Bind some special characters
(global-set-key (kbd "C-x M-l") "λ") ; lambda
(global-set-key (kbd "C-x M-a") "∧") ; and
(global-set-key (kbd "C-x M-o") "∨") ; or
(global-set-key (kbd "C-x M-e") "∈") ; element
(global-set-key (kbd "C-x M-t") "⊤") ; true
(global-set-key (kbd "C-x M-b") "⊥") ; bottom
(global-set-key (kbd "C-x M-f") "∀") ; for all
(global-set-key (kbd "C-x M-e") "∃") ; there exists
(global-set-key (kbd "C-x M-n") "¬") ; negation
(global-set-key (kbd "C-x M-s") "∅") ; empty set
(global-set-key (kbd "C-x M-u") "∪") ; union
(global-set-key (kbd "C-x M-i") "∩") ; intersection

;; Setup graphviz dot mode
(add-hook 'graphviz-dot-mode-hook
    '(lambda ()
       (local-set-key (kbd "C-c b") 'graphviz-dot-preview)))

;; UTF-8
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Undo limit
(setq undo-limit 9999999)

;; Reload files modified on disk
(global-auto-revert-mode 1)
