;;; salt-editor.el --- Deal with auto-save -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  Deal with auto-save
;;
;;; Code:

(setq auto-save-default nil ;; Turn off auto-save
      make-backup-files nil ;; Turn off backu
      create-lockfiles nil) ;; Stop creating .#lock file links 

;;; super save
(use-package super-save
  :straight t
  :hook
  (after-init . super-save-mode))

(use-package saveplace
  :init
  (setq save-place-file (expand-file-name "places" salt-dir-cache)
        save-place-limit 100)
  :hook
  (after-init . save-place-mode))

;; recentf
(use-package recentf
  :init
  (setq recentf-max-saved-items 200
        recentf-max-menu-items 15
	recentf-save-file (expand-file-name "recentf" salt-dir-cache))
  :hook (after-init . recentf-mode))

(provide 'salt-editor)
;;; salt-editor.el ends here
