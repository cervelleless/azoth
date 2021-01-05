;;; salt-magit.el --- magit -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 cervelleless
;;
;; Author: cervelleless <http://github/felix>
;; Maintainer: cervelleless <cervelleless@gmail.com>
;; Created: December 02, 2020
;; Modified: December 02, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/felix/salt-org
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  magit configuration.
;;
;;; Code:

;;; magit
(use-package magit
  :straight t
  :init
  (setq transient-levels-file (expand-file-name "transient/levels" salt-dir-local)
	transient-values-file (expand-file-name "transient/values" salt-dir-local)
	transient-history-file (expand-file-name "transient/history" salt-dir-local))
  :defer t)


(provide 'salt-magit)
;;; salt-magit.el ends here.
