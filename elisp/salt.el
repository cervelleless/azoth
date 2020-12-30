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

(require 'salt-repo)
(require 'salt-env)
(require 'salt-completion)
(require 'salt-project)
(require 'salt-search)
(require 'salt-auto-compile)
(require 'salt-misc)
(require 'salt-ui)
(require 'salt-magit)
(require 'sulfur)
(require 'mercury)
(require 'salt-lisp)
(require 'salt-paren)
(require 'salt-eshell)
(require 'salt-web)

(provide 'salt)
;;; salt.el ends here
