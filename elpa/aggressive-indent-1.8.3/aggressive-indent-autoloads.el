;;; aggressive-indent-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "aggressive-indent" "../../../../.emacs.d/elpa/aggressive-indent-1.8.3/aggressive-indent.el"
;;;;;;  "274a5d700d3a07a69a086ce9a6260808")
;;; Generated autoloads from ../../../../.emacs.d/elpa/aggressive-indent-1.8.3/aggressive-indent.el

(autoload 'aggressive-indent-indent-defun "aggressive-indent" "\
Indent current defun.
Throw an error if parentheses are unbalanced.
If L and R are provided, use them for finding the start and end of defun.

\(fn &optional L R)" t nil)

(autoload 'aggressive-indent-indent-region-and-on "aggressive-indent" "\
Indent region between L and R, and then some.
Call `indent-region' between L and R, and then keep indenting
until nothing more happens.

\(fn L R)" t nil)

(autoload 'aggressive-indent-mode "aggressive-indent" "\
Toggle Aggressive-Indent mode on or off.

If called interactively, enable Aggressive-Indent mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\\{aggressive-indent-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-aggressive-indent-mode nil "\
Non-nil if Global Aggressive-Indent mode is enabled.
See the `global-aggressive-indent-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-aggressive-indent-mode'.")

(custom-autoload 'global-aggressive-indent-mode "aggressive-indent" nil)

(autoload 'global-aggressive-indent-mode "aggressive-indent" "\
Toggle Aggressive-Indent mode in all buffers.
With prefix ARG, enable Global Aggressive-Indent mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Aggressive-Indent mode is enabled in all buffers where
`aggressive-indent-mode' would do it.
See `aggressive-indent-mode' for more information on Aggressive-Indent mode.

\(fn &optional ARG)" t nil)

(defalias 'aggressive-indent-global-mode #'global-aggressive-indent-mode)

;;;### (autoloads "actual autoloads are elsewhere" "aggressive-indent"
;;;;;;  "../../../../.emacs.d/elpa/aggressive-indent-1.8.3/aggressive-indent.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/aggressive-indent-1.8.3/aggressive-indent.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "aggressive-indent" '("aggressive-indent-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/aggressive-indent-1.8.3/aggressive-indent-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/aggressive-indent-1.8.3/aggressive-indent.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; aggressive-indent-autoloads.el ends here
