;; Initialization file used to load all packages and customization files.


;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)

(setq package-enable-at-startup nil)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
			 ;;("tromey" . "http://tromey.com/elpa/")

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
  '(;; Makes handling lisp expressions much, much easier
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
    ;; https://github.com/clojure-emacs/ac-cider
    ac-cider

    ;; Clojure advanced refactoring
    ;; https://github.com/clojure-emacs/clj-refactor.el
    clj-refactor

    ;; Allow ido usage in as many contexts as possible. See
    ;; customizations/navigation.el line 23 for a description
    ;; of ido.
    ;; https://github.com/DarwinAwardWinner/ido-completing-read-plus
    ido-completing-read+

    ;; Enhances M-x to allow easier execution of commands. Provides
    ;; a filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    ;; Project navigation
    ;; https://github.com/bbatsov/projectile
    projectile

    ;; Colorful parenthesis matching
    ;; https://github.com/Fanael/rainbow-delimiters
    rainbow-delimiters

    ;; Edit html tags like sexps
    ;; https://github.com/magnars/tagedit
    tagedit

    ;; Git integration
    ;; https://magit.vc
    magit

    ;; Mode for editing HTML, CSS and XML
    ;; http://web-mode.org
    web-mode
    
    ;; Displays available keybindings
    ;; https://github.com/justbur/emacs-which-key
    which-key

    ;; Char based decision tree navigation
    ;; https://github.com/abo-abo/avy
    avy

    ;; Lua mode
    ;; https://github.com/immerrr/lua-mode
    lua-mode

    ;; For luarocks integration
    ;; https://github.com/emacs-pe/luarocks.el
    luarocks

    ;; Markdown mode
    ;; https://jblevins.org/projects/markdown-mode/
    markdown-mode

    ;; Graphviz mode
    ;; https://github.com/ppareit/graphviz-dot-mode
    graphviz-dot-mode

    ;; Makes env variables look like in shell
    ;; https://github.com/purcell/exec-path-from-shell
    exec-path-from-shell))

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
(load "neotree/neotree.el")

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

;; Specific file for customizations
(setq custom-file "custom.el") 
(load custom-file)

;; Language-specific
(load "setup-clojure.el")
(load "setup-js.el")
(load "setup-web.el")
(load "setup-elisp.el")
