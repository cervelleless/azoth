;;; salt-files.el --- file, directory and something else -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  file, directory and something else.
;;
;;; Code:


;; ranger
(use-package ranger
  :straight t
  :defer t
  :init
  (setq ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
	     ranger-header-func 'ranger-header-line
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4")))


 
(provide 'salt-files)
;;; salt-files ends here
