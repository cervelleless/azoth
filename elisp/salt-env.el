;;; salt-env.el --- environment variables and settings -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 Cervelleless
;;
;; Author: Cervelleless <http://github.com/cervelleless>
;; Maintainer: Cervelleless <cervelleless@gmail.com>
;; Created: December 02, 2020
;; Modified: December 02, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage:
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  environment variables and settings.
;;
;;; Code:

;;; some settings
(setq indent-tabs-mode nil)

;; y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; disable vc
(setq vc-handled-backends nil)

;; custom variables
(setq custom-file (concat user-emacs-directory "private/custom.el"))
(setq auto-save-list-file-prefix (concat user-emacs-directory "private/autosave/"))

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold (* 100 1000 1000))

;;
(setq load-prefer-newer t)

;; GNUS cann't send email error
(add-to-list 'exec-path "/usr/local/bin/")
;; shell-command-to-string error
(setenv "PATH"
        (concat "/usr/local/bin/:"
                "/usr/local/opt/coreutils/libexec/gnubin/:"
                (getenv "PATH")))
;; eshll-mode command cann't found
(eval-after-load 'esh-util
  '(progn
     (setq eshell-path-env (concat "/usr/local/bin/:" "/usr/local/opt/coreutils/libexec/gnubin/:" eshell-path-env))))

;; inhibit startup screen
(setq inhibit-startup-screen t)

;; Set up the visible bell
(setq visible-bell t)

;;; envrc
(use-package envrc
  :straight t
  :defer t)


(provide 'salt-env)
;;; salt-env.el ends here
