;;; Packages and config that make Emacs Pretty
(use-package which-key
  :config
  (which-key-mode))

(use-package dim)
(dim-minor-names
 '((visual-line-mode   " ↩")
   (auto-fill-function " ↵")
   (eldoc-mode         ""      eldoc)
   (whitespace-mode    " _"    whitespace)
   (paredit-mode       " ()"   paredit)
   (flycheck-mode      " FC"   flycheck)
   (which-key-mode     "")
   (yas-minor-mode     ""      yasnippet)
   (company-mode       ""      company)
   (smartparens-mode   ""      smartparens)
   (projectile-mode    " proj" projectile)
   (olivetti-mode      ""      olivetti)))

  ;; (use-package nofrils-acme-theme
  ;;   :config
  ;;   (load-theme 'nofrils-acme t)
  ;;   (global-highlight-changes-mode -1))

(use-package monotropic-theme
  :config
  (load-theme 'monotropic t)
  (global-highlight-changes-mode -1))

(use-package go-mode
  :hook (before-save . gofmt-before-save)
  (go-mode . (lambda ()
               (local-set-key (kbd "C-c C-r")
                              'go-remove-unused-imports)))
  (go-mode . (lambda ()
               (local-set-key (kbd "C-c i")
                              'go-goto-imports))))

;; PDF-Tools
(use-package pdf-tools)

(use-package centered-cursor-mode)

(use-package olivetti
  :hook
  (text-mode . olivetti-mode)
  (prog-mode . olivetti-mode))

;(with-eval-after-load olivetti-mode)
(add-hook 'olivetti-mode-on-hook (lambda ()
                            (olivetti-set-width 110)))

(use-package pdf-tools)

(setq org-format-latex-options '(:scale 2.0))
