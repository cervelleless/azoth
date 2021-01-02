;;; salt-rust.el --- for Rust  -*- lexical-binding: t; -*-
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
;;  For rust development.
;;
;;; Code:

(use-package rustic
  :straight t
  :defer t
  :init
  (setq rustic-lsp-server 'rls
	rustic-lsp-client 'eglot)
  :hook
  (eglot--managed-mode . (lambda () (flymake-mode -1))))

(provide 'salt-rust)
;;; salt-rust.el ends here

