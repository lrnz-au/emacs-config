;;; Packages and config that make Emacs Pretty
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode))

(use-package which-key
  :config
  (which-key-mode))

;; PDF-Tools
(use-package pdf-tools
  )
