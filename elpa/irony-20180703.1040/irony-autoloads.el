;;; irony-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "irony" "../../../../.emacs.d/elpa/irony-20180703.1040/irony.el"
;;;;;;  "f88c83d373b5bd5e10d66d917ceb1f08")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony.el

(defvar irony-additional-clang-options nil "\
Additional command line options to pass down to libclang.

Please, do NOT use this variable to add header search paths, only
additional warnings or compiler options.

These compiler options will be prepended to the command line, in
order to not override the value coming from a compilation
database.")

(custom-autoload 'irony-additional-clang-options "irony" t)

(autoload 'irony-mode "irony" "\
Minor mode for C, C++ and Objective-C, powered by libclang.

If called interactively, enable Irony mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'irony-version "irony" "\
Return the version number of the file irony.el.

If called interactively display the version in the echo area.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'irony-server-kill "irony" "\
Kill the running irony-server process, if any.

\(fn)" t nil)

(autoload 'irony-get-type "irony" "\
Get the type of symbol under cursor.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "irony" "../../../../.emacs.d/elpa/irony-20180703.1040/irony.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony" '("irony-")))

;;;***

;;;***

;;;### (autoloads nil "irony-cdb" "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb.el"
;;;;;;  "350719950cdfa44f4e620c9463b7dfb5")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb.el

(autoload 'irony-cdb-autosetup-compile-options "irony-cdb" "\


\(fn)" t nil)

(autoload 'irony-cdb-menu "irony-cdb" "\


\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "irony-cdb" "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-cdb" '("irony-cdb-")))

;;;***

;;;***

;;;### (autoloads nil "irony-cdb-clang-complete" "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-clang-complete.el"
;;;;;;  "c61e5aa72b58a89991c6f144bee28684")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-clang-complete.el

(autoload 'irony-cdb-clang-complete "irony-cdb-clang-complete" "\


\(fn COMMAND &rest ARGS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "irony-cdb-clang-complete"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-clang-complete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-clang-complete.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-cdb-clang-complete" '("irony-cdb-clang-complete--")))

;;;***

;;;***

;;;### (autoloads nil "irony-cdb-json" "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-json.el"
;;;;;;  "cee6533475aad95ca079d2441b4ddef0")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-json.el

(autoload 'irony-cdb-json "irony-cdb-json" "\


\(fn COMMAND &rest ARGS)" nil nil)

(autoload 'irony-cdb-json-add-compile-commands-path "irony-cdb-json" "\
Add an out-of-source compilation database.

Files below the PROJECT-ROOT directory will use the JSON
Compilation Database as specified by COMPILE-COMMANDS-PATH.

The JSON Compilation Database are often generated in the build
directory. This functions helps mapping out-of-source build
directories to project directory.

\(fn PROJECT-ROOT COMPILE-COMMANDS-PATH)" t nil)

(autoload 'irony-cdb-json-select "irony-cdb-json" "\
Select CDB to use with a prompt.

It is useful when you have several CDBs with the same project
root.

The completion function used internally is `completing-read' so
it could easily be used with other completion functions by
temporarily using a let-bind on `completing-read-function'. Or
even helm by enabling `helm-mode' before calling the function.

\(fn)" t nil)

(autoload 'irony-cdb-json-select-most-recent "irony-cdb-json" "\
Select CDB that is most recently modified.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "irony-cdb-json"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-json.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-json.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-cdb-json" '("irony-cdb-json--")))

;;;***

;;;***

;;;### (autoloads nil "irony-cdb-libclang" "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-libclang.el"
;;;;;;  "e4576a1ce3ed70d1342bea5057020a35")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-libclang.el

(autoload 'irony-cdb-libclang "irony-cdb-libclang" "\


\(fn COMMAND &rest ARGS)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "irony-cdb-libclang"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-libclang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-libclang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-cdb-libclang" '("irony-cdb-libclang--")))

;;;***

;;;***

;;;### (autoloads nil "irony-completion" "../../../../.emacs.d/elpa/irony-20180703.1040/irony-completion.el"
;;;;;;  "7ae706cb631a59416a890c3e9a7b7d8d")
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-completion.el

(autoload 'irony-completion-at-point "irony-completion" "\


\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "irony-completion"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-completion.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-completion.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-completion" '("irony-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "irony-diagnostics"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-diagnostics.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-diagnostics.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-diagnostics" '("irony-diagnostics-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "irony-iotask"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-iotask.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-iotask.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-iotask" '("irony-iotask-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "irony-snippet"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-snippet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/irony-20180703.1040/irony-snippet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "irony-snippet" '("irony-snippet-")))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/irony-20180703.1040/irony-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-clang-complete.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-json.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb-libclang.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-cdb.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-completion.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-diagnostics.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-iotask.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony-snippet.el"
;;;;;;  "../../../../.emacs.d/elpa/irony-20180703.1040/irony.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; irony-autoloads.el ends here
