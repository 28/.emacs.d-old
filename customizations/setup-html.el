;; Setting for web-mode. Used only for HTML, CSS and XML.


;; Associate file types for web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xml?\\'" . web-mode))

;; Auto closing of tags
(setq web-mode-enable-auto-pairing t)

;; CSS colorization
(setq web-mode-enable-css-colorization t)
