;;; expand-region-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "cc-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/cc-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/cc-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cc-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "clojure-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/clojure-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/clojure-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "clojure-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "cperl-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/cperl-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/cperl-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "cperl-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "css-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/css-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/css-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "css-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "enh-ruby-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/enh-ruby-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/enh-ruby-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "enh-ruby-mode-expansions" '("er/add-enh-ruby-mode-expansions")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "er-basic-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/er-basic-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/er-basic-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "er-basic-expansions" '("er--" "er/mark-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "erlang-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/erlang-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/erlang-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "erlang-mode-expansions" '("er/add-erlang-mode-expansions")))

;;;***

;;;### (autoloads nil "expand-region" "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region.el"
;;;;;;  "69d4110c8dc5ec31d74ce206f094df15")
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region.el

(autoload 'er/expand-region "expand-region" "\
Increase selected region by semantic units.

With prefix argument expands the region that many times.
If prefix argument is negative calls `er/contract-region'.
If prefix argument is 0 it resets point and mark to their state
before calling `er/expand-region' for the first time.

\(fn ARG)" t nil)

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "expand-region-core"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "expand-region-core" '("er--" "er/")))

;;;***

;;;### (autoloads nil "expand-region-custom" "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-custom.el"
;;;;;;  "65696caf6c61d5bb31444a192c5119b5")
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-custom.el

(let ((loads (get 'expand-region 'custom-loads))) (if (member '"expand-region-custom" loads) nil (put 'expand-region 'custom-loads (cons '"expand-region-custom" loads))))

(defvar expand-region-preferred-python-mode 'python "\
The name of your preferred python mode")

(custom-autoload 'expand-region-preferred-python-mode "expand-region-custom" t)

(defvar expand-region-guess-python-mode t "\
If expand-region should attempt to guess your preferred python mode")

(custom-autoload 'expand-region-guess-python-mode "expand-region-custom" t)

(defvar expand-region-autocopy-register "" "\
If set to a string of a single character (try \"e\"), then the
contents of the most recent expand or contract command will
always be copied to the register named after that character.")

(custom-autoload 'expand-region-autocopy-register "expand-region-custom" t)

(defvar expand-region-skip-whitespace t "\
If expand-region should skip past whitespace on initial expansion")

(custom-autoload 'expand-region-skip-whitespace "expand-region-custom" t)

(defvar expand-region-fast-keys-enabled t "\
If expand-region should bind fast keys after initial expand/contract")

(custom-autoload 'expand-region-fast-keys-enabled "expand-region-custom" t)

(defvar expand-region-contract-fast-key "-" "\
Key to use after an initial expand/contract to contract once more.")

(custom-autoload 'expand-region-contract-fast-key "expand-region-custom" t)

(defvar expand-region-reset-fast-key "0" "\
Key to use after an initial expand/contract to undo.")

(custom-autoload 'expand-region-reset-fast-key "expand-region-custom" t)

(defvar expand-region-exclude-text-mode-expansions '(html-mode nxml-mode) "\
List of modes which derive from `text-mode' for which text mode expansions are not appropriate.")

(custom-autoload 'expand-region-exclude-text-mode-expansions "expand-region-custom" t)

(defvar expand-region-smart-cursor nil "\
Defines whether the cursor should be placed intelligently after expansion.

If set to t, and the cursor is already at the beginning of the new region,
keep it there; otherwise, put it at the end of the region.

If set to nil, always place the cursor at the beginning of the region.")

(custom-autoload 'expand-region-smart-cursor "expand-region-custom" t)

;;;### (autoloads "actual autoloads are elsewhere" "expand-region-custom"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-custom.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-custom.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "expand-region-custom" '("expand-region-guess-python-mode")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "feature-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/feature-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/feature-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "feature-mode-expansions" '("er--block-between-keywords" "er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "html-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/html-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/html-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "html-mode-expansions" '("er--" "er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "js-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/js-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/js-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "js2-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/js2-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/js2-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "js2-mode-expansions" '("er/add-js2-mode-expansions" "js2-mark-parent-statement")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "jsp-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/jsp-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/jsp-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "jsp-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "latex-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/latex-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/latex-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "latex-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "nxml-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/nxml-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/nxml-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "nxml-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "octave-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/octave-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/octave-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "octave-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "python-el-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/python-el-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/python-el-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "python-el-expansions" '("er--python-string-delimiter" "er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "python-el-fgallina-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/python-el-fgallina-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/python-el-fgallina-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "python-el-fgallina-expansions" '("er--python-" "er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "python-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/python-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/python-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "python-mode-expansions" '("er--" "er/" "py-goto-beyond-clause")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ruby-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/ruby-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/ruby-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ruby-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "sml-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/sml-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/sml-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sml-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "subword-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/subword-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/subword-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "subword-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "text-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/text-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/text-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "text-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "the-org-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/the-org-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/the-org-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "the-org-mode-expansions" '("er/")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "web-mode-expansions"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/web-mode-expansions.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/expand-region-20180625.939/web-mode-expansions.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "web-mode-expansions" '("er/add-web-mode-expansions")))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/expand-region-20180625.939/cc-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/clojure-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/cperl-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/css-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/enh-ruby-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/er-basic-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/erlang-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-core.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-custom.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/expand-region.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/feature-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/html-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/js-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/js2-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/jsp-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/latex-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/nxml-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/octave-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/python-el-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/python-el-fgallina-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/python-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/ruby-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/sml-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/subword-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/text-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/the-org-mode-expansions.el"
;;;;;;  "../../../../.emacs.d/elpa/expand-region-20180625.939/web-mode-expansions.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; expand-region-autoloads.el ends here
