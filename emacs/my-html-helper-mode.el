(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq html-helper-do-write-file-hooks t) ; do timestamp
(setq html-helper-build-new-buffer t)
(setq html-helper-address-string
"<a href=\"http://monkey.org/~kra/\">Karl Anderson</a>
<a href=\"mailto:kra@monkey.org\">&lt;kra@monkey.org&gt;</a>")

(defun html-helper-my-insert-timestamp ()
  "My timestamp insertion function."
  (insert "Last modified " (format-time-string "%e %B %Y") "\n"))
(setq html-helper-timestamp-hook 'html-helper-my-insert-timestamp)

;; should make the hr of n-b-t configurable
(setq html-helper-new-buffer-template
      '("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">"
		"<html> <head>\n"
		"<title>" p "</title>\n" 
		"<link rev=made href=\"\">\n"
		"<link rel=start href=\"\">\n"
		"</head>\n\n"
		"<body>\n"
		"<h1>" p "</h1>\n\n"
		p
		"\n\n<hr noshade>\n"
		"<address>\n"
		html-helper-address-string
		"\n</address>\n"
        html-helper-timestamp-start
        html-helper-timestamp-end
		"\n</body> </html>\n"))

(defun my-html-tags-fn ()
  (load-library "my-tables.el")
  ;; make paragraph a container
  (html-helper-add-tag
   '(textel "\e\C-m"  nil "Paragraph" ("<p>\n" 'r "\n</p>\n")))
  ;; no stupid 3d <hr>
  (html-helper-add-tag
   '(textel "\C-c=" nil	"Horizontal Line" (& "<hr noshade>\n"))))
(add-hook 'html-helper-load-hook 'my-html-tags-fn t)

(defun my-html-helper-mode-hook () (auto-fill-mode 1))
(add-hook 'html-helper-mode-hook 'my-html-helper-mode-hook t)