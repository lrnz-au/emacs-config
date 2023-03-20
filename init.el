;; Enable Straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

; Disable package.el
(setq package-enable-at-startup nil)
(straight-use-package 'org)

;; Enable (use-package) with Straight.el
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(set-frame-font "Ubuntu Mono 16" nil t)

;; Load Startup.el
(load "~/.emacs.d/config/startup.el")

(setq org-latex-caption-above nil)

;; Get other configs

(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/config/")
