;;;; interface stuff

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)

;(require 'ido)
;(ido-mode t)

(global-set-key "\M-n" 'goto-line)
(global-unset-key "\C-z")		    ;iconify, I HATE that!
(global-unset-key "\C-x\C-z")		;ditto

;; osx terminal
;(global-set-key (kbd "M-[ 5 d") 'backward-word)
;(global-set-key (kbd "M-[ 5 c") 'forward-word)
;; I use iterm2 for emacs in a terminal window.  Handles pageup-pagedown
;; out of the box, and to handle C-up and C-down, add keybindings (in iterm)
;; which send the escape sequences [1;5A and [1;5B respectively.  No, I
;; don't know what they mean, but it works.

; osx cut and paste
; when running XEmacs on OSX display, just run autocutsel on X server box
;(setq x-select-enable-clipboard t)
;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)


(setq garbage-collection-messages t)

(fset 'yes-or-no-p 'y-or-n-p)

; Ask to quit emacs
(setq kill-emacs-query-functions
      (cons (lambda () (yes-or-no-p "Really kill Emacs? "))
            kill-emacs-query-functions))