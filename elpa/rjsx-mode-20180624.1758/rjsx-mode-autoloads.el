;;; rjsx-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "rjsx-mode" "../../../../.emacs.d/elpa/rjsx-mode-20180624.1758/rjsx-mode.el"
;;;;;;  "8a2fce661d52b79f4e7d2fea9f11c9eb")
;;; Generated autoloads from ../../../../.emacs.d/elpa/rjsx-mode-20180624.1758/rjsx-mode.el

(autoload 'rjsx-mode "rjsx-mode" "\
Major mode for editing JSX files.

\(fn)" t nil)

(autoload 'rjsx-minor-mode "rjsx-mode" "\
Minor mode for parsing JSX syntax into an AST.

If called interactively, enable Rjsx minor mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))

;;;### (autoloads "actual autoloads are elsewhere" "rjsx-mode" "../../../../.emacs.d/elpa/rjsx-mode-20180624.1758/rjsx-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/rjsx-mode-20180624.1758/rjsx-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "rjsx-mode" '("rjsx-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/rjsx-mode-20180624.1758/rjsx-mode-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/rjsx-mode-20180624.1758/rjsx-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rjsx-mode-autoloads.el ends here
