;;; roam.el

(unbind-key (kbd "C-c n"))

(use-package org-roam
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n f" . org-roam-node-find)
         ("C-c c"   . org-roam-capture))
  :config
  (setq org-roam-directory (file-truename "~/Documents/University/Notes"))
  (org-roam-setup))

(org-roam-db-autosync-mode '("~/Documents/LaTeX-Things/Bib.bib"))


