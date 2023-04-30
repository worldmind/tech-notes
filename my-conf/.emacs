;; CUA-Mode brings C-[z|x|c|v] shortcuts
(cua-mode 1)

(setq scroll-step 1)

(setq-default indent-tabs-mode nil)

(setq make-backup-files nil)

(setq default-tab-width 4)

(require 'whitespace)
(setq whitespace-style '(trailing tabs tab-mark))
(global-whitespace-mode 1)

(global-set-key (kbd "C-l") 'goto-line)

(show-paren-mode 1)

(setq column-number-mode t)

(setq python-shell-interpreter "/usr/bin/python3")

(defun set-paste ()
  (interactive)
  (electric-indent-mode 0)
)
(defun unset-paste ()
  (interactive)
  (electric-indent-mode 1)
)
