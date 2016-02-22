(defun my-doc ()
  (interactive)
  (switch-to-buffer (find-file-noselect my-doc-location)))
