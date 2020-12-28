;;; azoth-paren.el --- parenthesis. -*- lexical-binding: t; -*-
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
;;  Parenthesis.
;;
;;; Code:

(use-package show-paren-mode
  :hook (prog-mode . show-paren-mode))

(use-package rainbow-delimiters
  :straight t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package electric-pair-mode
  :hook ((text-mode . electric-pair-mode)
	 (prog-mode . electric-pair-mode)))

(provide 'azoth-paren)
;;; azoth-paren.el ends here
