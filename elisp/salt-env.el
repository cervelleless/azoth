;;; salt-env.el --- environment variables and settings -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  environment variables and settings.
;;
;;; Code:

;;; some settings
;; no tabs
(setq indent-tabs-mode nil)

;; y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; disable vc
(setq vc-handled-backends nil)

;; custom variables
(setq custom-file (expand-file-name "custom.el" salt-dir-private))


;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold (* 100 1000 1000))

;;
(setq load-prefer-newer t)

;; default directory
(setq default-directory (concat (getenv "HOME") "/"))

;; inhibit startup screen
(setq inhibit-startup-screen t)

;; Set up the visible bell
(setq visible-bell t)


;;; dump/load data to file
;; dump to file
(require 'cl-lib)
(defun salt/dump-to-file (filename data)
  (with-temp-file filename
    (prin1 data (current-buffer))))

;; load from file
(defun salt/load-from-file (filename)
  (with-temp-buffer
    (insert-file-contents filename)
    (cl-assert (eq (point) (point-min)))
    (read (current-buffer))))

(let ((env-file (expand-file-name "env" salt-dir-local))
      (shell-cmd "source ~/.zshrc; env"))
  (if (file-exists-p env-file)
      (setq process-environment (salt/load-from-file env-file))
    (progn (message "Regenerate env file.")
	   (setq process-environment (split-string (shell-command-to-string shell-cmd) "\n"))
	   (salt/dump-to-file env-file process-environment))))

;;; copy from Bozhidar Batsov. HACK!!
(let ((path (shell-command-to-string ". ~/.bashrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path 
        (append
         (split-string-and-unquote path ":")
         exec-path)))

;;; envrc
(use-package envrc
  :straight t
  :defer t)


(provide 'salt-env)
;;; salt-env.el ends here
