;;; Config and Packages for to make coding easier
;; Syntax Highlighting
(use-package julia-mode)

(use-package haskell-mode)

(use-package markdown-mode)

(use-package python)

(use-package rust-mode)

;; Utility Packages
(use-package proof-general)

(use-package magit
  :bind ("C-x g" . magit))

(use-package auctex
  :defer t)

(use-package yasnippet
  :config
  (yas-global-mode 1))

(use-package vterm)

;; Org Mode things
(org-babel-do-load-languages
 'org-babel-load-languages
 '((latex . t)))
