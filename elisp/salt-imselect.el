;;; salt-imselect.el --- chinese input with imselect -*- lexical-binding: t; -*-
;;
;;; Commentary:
;;
;;  chinese input with imselect
;;
;;; Code:

(require 'subr-x)

;; Switch chinese input in different vi state with im-select
(defvar default-im "com.apple.keylayout.ABC"
  "Default ascii-only input method")
(defvar prev-im nil
  "previous-im outside sulfur-cmd-mode")


;;;###autoload
(defun salt/im-use-default ()
  "Switch to the default input method 'com.apple.keylayout.ABC'"
  (interactive)
  (shell-command-to-string (concat "/usr/local/bin/im-select " default-im)))

;;;###autoload
(defun salt/im-remember ()
  "Remember previous im"
  (interactive)
  (setq prev-im (string-trim (shell-command-to-string "/usr/local/bin/im-select"))))

;;;###autoload
(defun salt/im-use-prev ()
  "Use previous input method. If previous input method is not defined, use default method"
  (interactive)
  (if (minibufferp)
      (call-interactively 'salt/im-use-default)
    (if prev-im
	(shell-command-to-string (concat "/usr/local/bin/im-select " prev-im))
      (call-interactively 'salt/im-use-default))))

(advice-add 'enter-sulfur-cmd-mode :after #'salt/im-use-default)
(advice-add 'enter-sulfur-cmd-mode :before #'salt/im-remember)
(advice-add 'quit-sulfur-cmd-mode :after #'salt/im-use-prev)

(provide 'salt-imselect)
;;; salt-imselect.el ends here
