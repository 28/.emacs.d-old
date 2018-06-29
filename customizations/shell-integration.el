;; This file defines the integration with shell.


;; Sets up exec-path-from shell
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs '("PATH")))
