(setq load-path (append
                 (list 
                  (expand-file-name "~/emacs")
                  ;(expand-file-name "~/emacs/color-theme")
		  )
                 load-path))

;(require 'info)

;(load-library "my-html-helper-mode")
(load-library "my-visual")
(load-library "my-interface")

;; I want to be able to autoload these, but don't know how.
;(require 'jka-compr)

;; interaction with the filesystem
(setq make-backup-files nil)		;wish I could hide them instead
(setq backup-by-copying-when-linked t)	; be careful with hard links
;; input/output with the file
(setq scroll-conservatively 1)
(setq-default indent-tabs-mode nil)	;indent with spaces only

;; osx stuff
(if (eq system-type 'darwin)
    (setq process-connection-type t))

;; tramp
;(add-to-list 'load-path "~/emacs/tramp/lisp/")
;(require 'tramp)
;(setq tramp-shell-prompt-pattern "^root@karldev.duo: ~ #")
;(setq tramp-shell-prompt-pattern "^root.*#")

;; emacs-server, start, and let C-x k (kill buffer) do the same as C-x #
(server-start)
;; (add-hook 'server-switch-hook
;;           (lambda ()
;;             (when (current-local-map)
;;               (use-local-map (copy-keymap (current-local-map))))
;;             (when server-buffer-clients
;;               (local-set-key (kbd "C-x k") 'server-edit))))
