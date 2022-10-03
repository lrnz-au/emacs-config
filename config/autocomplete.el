;; Configuration for all things auto-complete.

(use-package company
  :config
  (setq company-global-modes '(not org-mode latex-mode))
  (add-hook 'after-init-hook 'global-company-mode)
  (remove-hook 'text-mode-hook #'company-mode))

(use-package company-quickhelp
  :config
  (company-quickhelp-mode))

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         (js-mode . lsp)
         (java-mode . lsp)
         (clojure-mode . lsp)
         (rust-mode . lsp)
         (vue-mode . lsp)
         (typescript-mode . lsp)
         (rjsx-mode . lsp)
         (web-mode . lsp)
         (c-mode . lsp)
         (c++-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration)))

(use-package lsp-ui :commands lsp-ui-mode)

(use-package flycheck
  :config
  (global-flycheck-mode)
  :hook (
         (after-init .  (lambda () global-flycheck-mode))))
