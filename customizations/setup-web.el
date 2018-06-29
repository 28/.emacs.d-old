;; Setting for web related stuff - for HTML, CSS, XML, Markdown etc.


;; Associate file types for web-mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.xml?\\'" . web-mode))

;; Auto closing of tags
(setq web-mode-enable-auto-pairing t)

;; CSS colorization
(setq web-mode-enable-css-colorization t)

;; Setup markdown mode
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
