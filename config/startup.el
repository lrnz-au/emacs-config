;; Startup Config
(setq initial-scratch-message
      (shell-command-to-string "/opt/homebrew/bin/fortune | /opt/homebrew/bin/cowsay"))

(setq initial-major-mode 'text-mode)

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

(setq org-agenda-files '("~/Documents/University/Todos/"))
(setq org-agenda-span 10)
(setq org-agenda-start-on-weekday nil)
(bind-key (kbd "C-c a") 'org-agenda)

(use-package graphene
  :config
  (setq graphene-linum-auto nil)
  (setq graphene-default-font "Ubuntu Mono 16"))
