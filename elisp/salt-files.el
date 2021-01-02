;;; salt-files.el --- file, directory and something else -*- lexical-binding: t; -*-
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
;;  file, directory and something else.
;;
;;; Code:



;; ranger
(use-package ranger
  :straight t
  :defer t
  :init
  (setq ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
	     ranger-header-func 'ranger-header-line
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4")))


;; recentf
(use-package recentf
  :straight t
  :defer t
  :commands recentf-mode
  :hook (after-init . recentf-mode)
  :config
  (setq recentf-max-saved-items 200
        recentf-max-menu-items 15))
 
(provide 'salt-files)
;;; salt-files ends here
