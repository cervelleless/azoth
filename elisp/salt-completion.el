;;; salt-completion.el --- selectrum framework -*- lexical-binding: t; -*-
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
;;  selectrum, consult, embark, marginalia and prescient.
;;
;;; Code:

;;; selectrum
(use-package selectrum
  :straight t
  :hook (after-init . selectrum-mode))

;; (use-package icomplete-vertical
;;   :straight t
;;   :init
;;   (setq completion-styles '(partial-completion substring)
;;	completion-category-overrides '((file (styles basic substring)))
;;	read-file-name-completion-ignore-case t
;;	read-buffer-completion-ignore-case t
;;	completion-ignore-case t)
;;   :hook
;;   (after-init . icomplete-mode)
;;   (icomplete-mode . icomplete-vertical-mode)
;;   :bind (:map icomplete-minibuffer-map
;;               ("<down>" . icomplete-forward-completions)
;;               ("C-n" . icomplete-forward-completions)
;;               ("<up>" . icomplete-backward-completions)
;;               ("C-p" . icomplete-backward-completions)
;;               ("C-v" . icomplete-vertical-toggle)))

(use-package orderless
  :straight t
  :init
  (setq selectrum-refine-candidates-function #'orderless-filter
	selectrum-highlight-candidates-function #'orderless-highlight-matches))


;;; consult
(use-package consult
  :straight t
  :init
  (defun consult-fd (&optional dir)
    "Search for regexp with fd in DIR."
    (interactive "P")
    (let ((consult-fd-cmd '("fd" "--color=never" "--full-path")))
      (pcase-let ((`(,prompt . ,default-directory) (consult--directory-prompt "fd" dir)))
	(consult--find prompt consult-fd-cmd))))
  :config
  (fset 'multi-occur #'consult-multi-occur))


;;; selectrum-prescient
(use-package selectrum-prescient
  :straight t
  :init
  (setq prescient-save-file (expand-file-name "prescient-save.el" salt-dir-cache))
  :hook (selectrum-mode . prescient-persist-mode)
  (selectrum-mode . selectrum-prescient-mode))


;;; embark
  (use-package embark
    :straight t)

;;; Enable richer annotations using the Marginalia package
(use-package marginalia
  :straight t
  ;; When using the Embark package, you can bind `marginalia-cycle' as an Embark action!
  :bind (:map embark-general-map
	      ("A" . marginalia-cycle))
  ;; The :init configuration is always executed (Not lazy!)
  :init
  ;; Must be in the :init section of use-package such that the mode gets
  ;; enabled right away. Note that this forces loading the package.
  ;; (marginalia-mode)
  ;; When using Selectrum and `marginalia-cycle' as an Embark action,
  ;; ensure that Selectrum is refreshed when cycling annotations.
  (advice-add #'marginalia-cycle :after
	      (lambda () (when (bound-and-true-p selectrum-mode) (selectrum-exhibit))))
  ;; Prefer richer, more heavy, annotations over the lighter default variant.
  ;; E.g. M-x will show the documentation string additional to the keybinding.
  ;; By default only the keybinding is shown as annotation.
  ;; Note that there is the command `marginalia-cycle' to
  ;; switch between the annotators.
  (setq marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-light nil))
  :hook (selectrum-mode . marginalia-mode))
(provide 'salt-completion)
;;; salt-completion.el ends here
