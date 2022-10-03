;; Configuration for Common-Lisp, Scheme, Emacs-Lisp, anything you can imagine.

(use-package slime
  :config
  (setq inferior-lisp-program "sbcl"))

(use-package paredit
  :hook
  (slime-repl-mode . paredit-mode)
  (emacs-lisp-mode . paredit-mode)
  (lisp-mode       . paredit-mode))
