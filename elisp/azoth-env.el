;;; azoth-env.el --- environment variables and settings -*- lexical-binding: t; -*-
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


;;; envrc
(use-package envrc
  :straight t
  :defer t)


(provide 'azoth-env)
;;; azoth-env.el ends here
