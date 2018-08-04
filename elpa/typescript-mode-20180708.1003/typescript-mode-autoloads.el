;;; typescript-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "typescript-mode" "../../../../.emacs.d/elpa/typescript-mode-20180708.1003/typescript-mode.el"
;;;;;;  "360e1492e8656252f64585645e030e1c")
;;; Generated autoloads from ../../../../.emacs.d/elpa/typescript-mode-20180708.1003/typescript-mode.el

(autoload 'typescript-mode "typescript-mode" "\
Major mode for editing typescript.

Key bindings:

\\{typescript-mode-map}

\(fn)" t nil)

(eval-after-load 'folding '(when (fboundp 'folding-add-to-marks-list) (folding-add-to-marks-list 'typescript-mode "// {{{" "// }}}")))

(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))

;;;### (autoloads "actual autoloads are elsewhere" "typescript-mode"
;;;;;;  "../../../../.emacs.d/elpa/typescript-mode-20180708.1003/typescript-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/typescript-mode-20180708.1003/typescript-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "typescript-mode" '("typescript-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/typescript-mode-20180708.1003/typescript-mode-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/typescript-mode-20180708.1003/typescript-mode.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; typescript-mode-autoloads.el ends here