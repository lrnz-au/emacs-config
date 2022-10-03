;; Startup Config
(setq initial-scratch-message
      (shell-command-to-string "/opt/homebrew/bin/fortune | /opt/homebrew/bin/cowsay"))

(setq dotfiles-dir "~/.emacs.d/")
(setq custom-file (concat dotfiles-dir "custom.el"))

(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; Config options for MacOS
(when (equal system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super)
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t)))

;; Environment Variable Setup.
(setq python-shell-interpreter "/Library/Frameworks/Python.framework/Versions/3.10/bin/python3")
(setq flycheck-python-mypy-executable "/Library/Frameworks/Python.framework/Versions/3.10/bin/mypy")
(setq company-tooltip-align-annotations t)

(setq ispell-program-name "/opt/homebrew/bin/aspell")

(use-package graphene)
