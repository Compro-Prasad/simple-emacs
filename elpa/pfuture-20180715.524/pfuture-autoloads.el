;;; pfuture-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pfuture" "../../../../.emacs.d/elpa/pfuture-20180715.524/pfuture.el"
;;;;;;  "d1d9d33d0cff6f9b9a151e6d6c6bc74e")
;;; Generated autoloads from ../../../../.emacs.d/elpa/pfuture-20180715.524/pfuture.el

(autoload 'pfuture-new "pfuture" "\
Create a new future process for command CMD and arguments CMD-ARGS.
This will return a process object with one additional 'result property which
can be read via (process-get process 'result) or alternatively with
\(pfuture-result process).

Note that CMD-ARGS must be a *sequence* of strings, meaning
this is wrong: (pfuture-new \"git status\")
this is right: (pfuture-new \"git\" \"status\")

\(fn CMD &rest CMD-ARGS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "pfuture" "../../../../.emacs.d/elpa/pfuture-20180715.524/pfuture.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/pfuture-20180715.524/pfuture.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pfuture" '("pfuture-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/pfuture-20180715.524/pfuture-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/pfuture-20180715.524/pfuture.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pfuture-autoloads.el ends here
