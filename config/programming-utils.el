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

(use-package org-present)

(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)))))
