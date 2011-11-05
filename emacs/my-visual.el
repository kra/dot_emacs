;;;; visual stuff

;; can't figure out how to prevent color-theme from turning text gray in
;; dark mode, even for themes with white foregrounds.
;; for interactive color theme thing, M-x color-theme-select
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-dark-laptop)
;(color-theme-simple-1)
;(color-theme-midnight)
;(color-theme-standard)
;(color-theme-tty-dark)

;; (require 'flash-paren)			;better flashing parens
;; (flash-paren-mode 1)

;; these are now defaults?
(load-library "font-lock") 
(global-font-lock-mode t)
;; to see what face is in effect at point, M-x describe-face
;;(set-face-foreground font-lock-comment-face 'red1)
;;(font-lock-comment-face ((t (:foreground "red1"))))
;(setq font-lock-comment-face font-lock-comment-delimiter-face)
;; (set-face-attribute 'default nil
;; 		    :family "MiscFixed" :height 98 :width 'semi-condensed)

(setq mac-allow-anti-aliasing nil)  ;; turn off anti-aliasing on osx

(add-hook 'python-mode-hook (lambda() (setq show-trailing-whitespace t)))

; The eternal emacs font hassle.  When creating a new frame, custom-set-faces
; (in .emacs) isn't always consulted, maybe because fonts come from somewhere
; else under X11?  This sets the font for a new frame.  In practice, this is
; currently only needed when opening a new emacsclient frame from a non-X11
; emacsserver.  Maybe this is only needed when the frame can't be told what
; the font is from the original window?
;(add-to-list 'default-frame-alist '(font . "9x14"))
(add-to-list 'default-frame-alist '(font . "-misc-fixed-medium-r-semicondensed--13-*-75-75-c-60-koi8-r"))

