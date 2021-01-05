;;; salt.el --- Here am I. -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 cervelle
;;
;; Author: Cervelleless <http://github.io/cervelleless>
;; Maintainer: Cervelle <cervelleless@gmail.com>
;; Created: November 17, 2020
;; Modified: November 17, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage:
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Here am I.
;;
;;; Code:

;;; private folder
(defvar salt-dir-private (expand-file-name "private" user-emacs-directory)
  "All files you create under the private folder are yours for personalization.")

;;; .local folder 
(defvar salt-dir-local (expand-file-name ".local" user-emacs-directory)
  "Folder of configure files, backup files, template files and so on.")

;;; Cache folder
(defvar salt-dir-cache (expand-file-name "cache" salt-dir-local))

;;; Template folder
(defvar salt-dir-template (expand-file-name "template" salt-dir-local)
  "Folder path of template files.")

;;; Create folders
(dolist (dir (list salt-dir-private
		   salt-dir-local
		   salt-dir-cache
		   salt-dir-template))
  (when (not (file-directory-p dir))
    (make-directory dir)))


(require 'salt-repo)
(require 'salt-env)
(require 'salt-editor)
(require 'salt-completion)
(require 'salt-project)
(require 'salt-search)
(require 'salt-auto-compile)
(require 'salt-eglot)
(require 'mercury)
(require 'sulfur)
(require 'salt-outline)
(require 'salt-dj)
(require 'salt-files)
(require 'salt-misc)
(require 'salt-ui)
(require 'salt-magit)
(require 'salt-paren)
(require 'salt-lisp)
(require 'salt-eshell)
(require 'salt-org)
(require 'salt-web)
(require 'salt-rust)
(require 'salt-ruby)

(require 'salt-imselect)

(provide 'salt)
;;; salt.el ends here
