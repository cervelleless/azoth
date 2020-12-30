;;; salt-outline.el --- outline -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 Cervelle
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
;;  The settings of imenu.
;;
;;; Code:

(use-package outline-minor-faces
  :straight t
  :hook (outline-minor-mode . outline-minor-faces-add-font-lock-keywords))



(provide 'salt-outline)
;;; salt-outline.el ends here
