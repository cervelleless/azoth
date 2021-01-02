;;; salt-web.el --- web development -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 cervelleless
;;
;; Author: cervelleless <http://github/felix>
;; Maintainer: cervelleless <cervelleless@gmail.com>
;; Created: December 15, 2020
;; Modified: December 15, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/felix/salt-web
;; Package-Requires: ((emacs 27.1) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  web development
;;
;;; Code:

;; js2-mode
(use-package js-mode
  :init
  (setq js-indent-level 2)
  :hook
  (js-mode . subword-mode)
  :defer t)

(use-package simple-httpd
  :straight t
  :defer t
  )

(use-package skewer-mode
  :straight t
  :defer t
  )

(use-package emmet-mode
  :straight t
  :defer t)

(use-package scss-mode
  :straight t
  :defer t)

(use-package web-mode
  :straight t
  :defer t)

(provide 'salt-web)
;;; salt-web.el ends here
