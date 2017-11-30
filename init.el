;; Initialization file used to load all packages and customization files.


;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)

;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "https://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa-stable.milkbox.net/packages/")))

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(defvar my-packages
  '(;; makes handling lisp expressions much, much easier
    ;; Cheat sheet: http://www.emacswiki.org/emacs/PareditCheatsheet
    paredit

    ;; Key bindings and code colorization for Clojure
    ;; https://github.com/clojure-emacs/clojure-mode
    clojure-mode

    ;; Extra syntax highlighting for clojure
    clojure-mode-extra-font-locking

    ;; Integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cider
    cider

    ;; Clojure auto-complete functionality
    ac-cider

    ;; Clojure advanced refactoring
    clj-refactor

    ;; Allow ido usage in as many contexts as possible. See
    ;; customizations/navigation.el line 23 for a description
    ;; of ido.
    ido-ubiquitous

    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    ;; Project navigation
    projectile

    ;; Colorful parenthesis matching
    rainbow-delimiters

    ;; Edit html tags like sexps
    tagedit

    ;; Git integration
    magit

    ;; Mode for editing HTML, CSS and XML
    web-mode
    
    ;; Displays available keybindings
    which-key

    ;; Char based decision tree navigation
    avy

    ;; Lua mode
    lua-mode

    ;; For luarocks integration
    luarocks

	;; Markdown mode
	markdown-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
(defvar vendor-dir "~/.emacs.d/vendor")
(add-to-list 'load-path vendor-dir)

;; Fireplace
(load "fireplace/fireplace.el")

;; My doc feature
(setq my-doc-location (concat vendor-dir "/my_doc/commands.txt"))
(load "my_doc/my_doc.el")

;; Neo tree
(load "neotree/neotree")

;;;;
;; Customization
;;;;

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
(load "shell-integration.el")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")

;; Hard-to-categorize customizations
(load "misc.el")

;; For editing lisps
(load "elisp-editing.el")

;; Language-specific
(load "setup-clojure.el")
(load "setup-js.el")
(load "setup-html.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode avy which-key web-mode magit tagedit rainbow-delimiters projectile smex ido-ubiquitous clj-refactor ac-cider cider clojure-mode-extra-font-locking clojure-mode paredit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
