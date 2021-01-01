;;; salt-dj.el --- dumb-jump. -*- lexical-binding: t; -*-
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
;;  dumb-jump
;;
;;; Code:

;;; dumb-jump
(use-package dumb-jump
  :straight t
  :init
  (setq dumb-jump-force-searcher 'rg)
  :config
  (add-to-list 'xref-backend-functions #'dumb-jump-xref-activate t))

(defhydra mercury-dumb-jump (:color blue :columns 5 :hint nil)
  "
Dumb Jump:
    _j_: Go    _b_: Back    _o_: Other window    _e_: Go external    _i_: Prompt
    _l_: Quick look       _x_: Go external other window"
  ("j" dumb-jump-go)
  ("o" dumb-jump-go-other-window)
  ("e" dumb-jump-go-prefer-external)
  ("x" dumb-jump-go-prefer-external-other-window)
  ("i" dumb-jump-go-prompt)
  ("l" dumb-jump-quick-look)
  ("b" dumb-jump-back)
  ("<escape>" nil "Exit"))

(provide 'salt-dj)
;;; salt-dj.el ends here
