;;; salt-files.el --- file, directory and something else -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  file, directory and something else.
;;
;;; Code:

(use-package ibuffer-projectile
  :straight t
  ;; Group ibuffer's list by project root
  :hook (ibuffer . ibuffer-projectile-set-filter-groups)
  :config
  (setq ibuffer-projectile-prefix "Project: "))


(use-package dired
  :commands dired-jump
  :init
  (setq dired-auto-revert-buffer t ; don't prompt to revert; just do it
        dired-dwim-target t ; suggest a target for moving/copying intelligently
        dired-hide-details-hide-symlink-targets nil
        ;; Always copy/delete recursively
        dired-recursive-copies  'always
        dired-recursive-deletes 'top
        ;; Where to store image caches
        image-dired-dir (concat salt-dir-cache "image-dired/")
        image-dired-db-file (concat image-dired-dir "db.el")
        image-dired-gallery-dir (concat image-dired-dir "gallery/")
        image-dired-temp-image-file (concat image-dired-dir "temp-image")
        image-dired-temp-rotate-image-file (concat image-dired-dir "temp-rotate-image")
        ;; Screens are larger nowadays, we can afford slightly larger thumbnails
        image-dired-thumb-size 150))

;; ranger
(use-package ranger
  :straight t
  :defer t
  :init
  (setq ranger-show-preview t
	ranger-deer-show-details t
	ranger-max-preview-size 10
        ranger-show-hidden t
        ranger-cleanup-eagerly t
        ranger-cleanup-on-disable t
	ranger-header-func 'ranger-header-line
        ranger-ignored-extensions '("mkv" "flv" "iso" "mp4")))

;; fd-dired
(use-package fd-dired
  :straight t
  :defer t
  :init
  (global-set-key [remap find-dired] #'fd-dired))
 
(provide 'salt-files)
;;; salt-files ends here
