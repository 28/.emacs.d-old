;; My doc functionality file


;; Function to open a new buffer with a command list file
(defun my-doc ()
  (interactive)
  (switch-to-buffer (find-file-noselect my-doc-location)))

;; Key binding
(global-set-key (kbd "C-c m") 'my-doc)
