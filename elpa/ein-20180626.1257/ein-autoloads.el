;;; ein-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads "actual autoloads are elsewhere" "ein-ac" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-ac.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-ac.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-ac" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-cell" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-cell" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-cell-edit"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell-edit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell-edit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-cell-edit" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-cell-output"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell-output.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell-output.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-cell-output" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-classes"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-classes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-classes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-classes" '("ein:")))

;;;***

;;;### (autoloads nil "ein-company" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-company.el"
;;;;;;  "f391ccee6134db13761cee04a81647d6")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-company.el

(autoload 'ein:company-backend "ein-company" "\


\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-company"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-company.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-company" '("ein:company-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-completer"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-completer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-completer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-completer" '("ein:complete")))

;;;***

;;;### (autoloads nil "ein-connect" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-connect.el"
;;;;;;  "c97822899bcedb9aba27c6b9dede0e4c")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-connect.el

(autoload 'ein:connect-to-notebook-command "ein-connect" "\
Connect to notebook.  When the prefix argument is given,
you can choose any notebook on your server including the ones
not yet opened.  Otherwise, already chose from already opened
notebooks.

\(fn &optional NOT-YET-OPENED)" t nil)

(autoload 'ein:connect-to-notebook "ein-connect" "\
Connect any buffer to notebook and its kernel.

\(fn NBPATH &optional BUFFER NO-RECONNECTION)" t nil)

(autoload 'ein:connect-to-notebook-buffer "ein-connect" "\
Connect any buffer to opened notebook and its kernel.

\(fn BUFFER-OR-NAME)" t nil)

(autoload 'ein:connect-buffer-to-notebook "ein-connect" "\
Connect BUFFER to NOTEBOOK.

\(fn NOTEBOOK &optional BUFFER NO-RECONNECTION)" nil nil)

(autoload 'ein:connect-to-default-notebook "ein-connect" "\
Connect to the default notebook specified by
`ein:connect-default-notebook'.  Set this to `python-mode-hook'
to automatically connect any python-mode buffer to the
notebook.

\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-connect"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-connect.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-connect.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-connect" '("ein:")))

;;;***

;;;***

;;;### (autoloads nil "ein-console" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-console.el"
;;;;;;  "499eaa4dfda831bc0c4a19cf65042620")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-console.el

(autoload 'ein:console-open "ein-console" "\
Open IPython console.
To use this function, `ein:console-security-dir' and
`ein:console-args' must be set properly.
This function works best with the new python.el_ which is shipped
with Emacs 24.2 or later.  If you don't have it, this function
opens a \"plain\" command line interpreter (comint) buffer where
you cannot use fancy stuff such as TAB completion.
It should be possible to support python-mode.el.  Patches are welcome!

.. _python.el: https://github.com/fgallina/python.el

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-console"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-console.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-console.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-console" '("ein:console-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-contents-api"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-contents-api.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-contents-api.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-contents-api" '("*ein:content-hierarchy*" "ein:" "update-content-path")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-core" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-core" '("*running-ipython-version*" "ein:")))

;;;***

;;;### (autoloads nil "ein-dev" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-dev.el"
;;;;;;  "ffbc45657aa152267e0942a0fd970305")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-dev.el

(autoload 'ein:dev-insert-mode-map "ein-dev" "\
Insert mode-map into rst document.  For README.rst.

\(fn MAP-STRING)" nil nil)

(autoload 'ein:dev-start-debug "ein-dev" "\
Enable EIN debugging support.
When the prefix argument is given, debugging support for websocket
callback (`websocket-callback-debug-on-error') is enabled.

\(fn &optional WS-CALLBACK)" t nil)

(autoload 'ein:dev-stop-debug "ein-dev" "\
Disable debugging support enabled by `ein:dev-start-debug'.

\(fn)" t nil)

(autoload 'ein:dev-bug-report-template "ein-dev" "\
Open a buffer with bug report template.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-dev" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-dev.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-dev.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-dev" '("ein:")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-events" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-events.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-events.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-events" '("ein:events-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-file" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-file.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-file.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-file" '("*ein:file-buffername-template*" "ein:")))

;;;***

;;;### (autoloads nil "ein-helm" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-helm.el"
;;;;;;  "05b678b4dfa9811c589ee52c8be2a06b")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-helm.el

(autoload 'anything-ein-kernel-history "ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'helm-ein-kernel-history "ein-helm" "\
Search kernel execution history then insert the selected one.

\(fn)" t nil)

(autoload 'anything-ein-notebook-buffers "ein-helm" "\
Choose opened notebook using anything.el interface.

\(fn)" t nil)

(autoload 'helm-ein-notebook-buffers "ein-helm" "\
Choose opened notebook using helm interface.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-helm" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-helm.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-helm.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-helm" '("ein:helm-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-hy" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-hy.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-hy.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-hy" '("ein:cell-")))

;;;***

;;;### (autoloads nil "ein-iexec" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-iexec.el"
;;;;;;  "06b4c18b2839069d520b043add2dbcfc")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-iexec.el

(autoload 'ein:iexec-mode "ein-iexec" "\
Instant cell execution minor mode.
Code cell at point will be automatically executed after any
change in its input area.

If called interactively, enable Ein:Iexec mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-iexec" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-iexec.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-iexec.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-iexec" '("ein:iexec-")))

;;;***

;;;***

;;;### (autoloads nil "ein-inspector" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-inspector.el"
;;;;;;  "b7b9dfb294eae4f8d233bce4cc61a9f6")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-inspector.el

(autoload 'ein:inspect-object "ein-inspector" "\


\(fn KERNEL OBJECT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-inspector"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-inspector.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-inspector.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-inspector" '("ein:")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-ipdb" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipdb.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipdb.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-ipdb" '("*ein:ipdb-" "ein:")))

;;;***

;;;### (autoloads nil "ein-ipynb-mode" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipynb-mode.el"
;;;;;;  "94b1208ade4465ff88934f37b49edbb9")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipynb-mode.el

(autoload 'ein:ipynb-mode "ein-ipynb-mode" "\
A simple mode for ipynb file.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '(".*\\.ipynb\\'" . ein:ipynb-mode))

;;;### (autoloads "actual autoloads are elsewhere" "ein-ipynb-mode"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipynb-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipynb-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-ipynb-mode" '("ein:ipynb-parent-mode")))

;;;***

;;;***

;;;### (autoloads nil "ein-jedi" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jedi.el"
;;;;;;  "c650b68b37b7b300fb7b67e07f80f3fa")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-jedi.el

(autoload 'ein:jedi-complete "ein-jedi" "\
Run completion using candidates calculated by EIN and Jedi.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'ein:jedi-dot-complete "ein-jedi" "\
Insert \".\" and run `ein:jedi-complete'.

\(fn)" t nil)

(autoload 'ein:jedi-setup "ein-jedi" "\
Setup auto-completion using EIN and Jedi.el_ together.

Jedi.el_ is a Python auto-completion library for Emacs.
To use EIN and Jedi together, add the following in your Emacs setup before loading EIN.::

  (setq ein:completion-backend 'ein:use-ac-jedi-backend)

.. _Jedi.el: https://github.com/tkf/emacs-jedi

\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-jedi" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jedi.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-jedi.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-jedi" '("ein:jedi-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-junk" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-junk.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-junk.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-junk" '("ein:junk-notebook-name")))

;;;***

;;;### (autoloads nil "ein-jupyter" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyter.el"
;;;;;;  "eb03c4d5a2c637ae06c6410f6208f39c")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyter.el

(autoload 'ein:jupyter-server-login-and-open "ein-jupyter" "\
Log in and open a notebooklist buffer for a running jupyter notebook server.

Determine if there is a running jupyter server (started via a
call to `ein:jupyter-server-start') and then try to guess if
token authentication is enabled. If a token is found use it to generate a
call to `ein:notebooklist-login' and once authenticated open the notebooklist buffer
via a call to `ein:notebooklist-open'.

\(fn &optional NO-POPUP)" t nil)

(autoload 'ein:jupyter-server-start "ein-jupyter" "\
Start the jupyter notebook server at the given path.

This command opens an asynchronous process running the jupyter
notebook server and then tries to detect the url and token to
generate automatic calls to `ein:notebooklist-login' and
`ein:notebooklist-open'.

With \\[universal-argument] prefix arg, it will prompt the user for the path to
the jupyter executable first. Else, it will try to use the
value of `*ein:last-jupyter-command*' or the value of the
customizable variable `ein:jupyter-default-server-command'.

Then it prompts the user for the path of the root directory
containing the notebooks the user wants to access.

The buffer named by `ein:jupyter-server-buffer-name' will contain
the log of the running jupyter server.

\(fn SERVER-CMD-PATH NOTEBOOK-DIRECTORY &optional NO-LOGIN-AFTER-START-P NO-POPUP)" t nil)

(autoload 'ein:jupyter-server-stop "ein-jupyter" "\
Stop a running jupyter notebook server.

Use this command to stop a running jupyter notebook server. If
there is no running server then no action will be taken.

\(fn &optional FORCE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-jupyter"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyter.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyter.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-jupyter" '("%ein:jupyter-server-session%" "*ein:" "ein:jupyter-")))

;;;***

;;;***

;;;### (autoloads nil "ein-jupyterhub" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyterhub.el"
;;;;;;  "6ecb61a23555ad5d84c900d9ab3aa3a1")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyterhub.el

(autoload 'ein:jupyterhub-connect "ein-jupyterhub" "\
Log on to a jupyterhub server using PAM authentication. Requires jupyterhub version 0.8 or greater.

\(fn URL USER PASSWORD)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-jupyterhub"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyterhub.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyterhub.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-jupyterhub" '("ein:j")))

;;;***

;;;***

;;;### (autoloads nil "ein-kernel" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernel.el"
;;;;;;  "fce1190c058c200096b9c26de5391411")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernel.el

(defalias 'ein:kernel-url-or-port 'ein:$kernel-url-or-port)

(defalias 'ein:kernel-id 'ein:$kernel-kernel-id)

;;;### (autoloads "actual autoloads are elsewhere" "ein-kernel" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernel.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernel.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-kernel" '("ein:" "kernel-restart-try-count" "max-kernel-restart-try-count")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-kernelinfo"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernelinfo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernelinfo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-kernelinfo" '("ein:kernelinfo")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-kill-ring"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-kill-ring.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-kill-ring.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-kill-ring" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-log" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-log.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-log.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-log" '("ein:")))

;;;***

;;;### (autoloads nil "ein-multilang" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang.el"
;;;;;;  "b0fd23ad008c6b13d16836ef66456790")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang.el

(autoload 'ein:notebook-multilang-mode "ein-multilang" "\
Notebook mode with multiple language fontification.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-multilang"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-multilang" '("ein:" "python-imenu-format-parent-item-jump-label")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-multilang-fontify"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang-fontify.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang-fontify.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-multilang-fontify" '("ein:mlf-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-node" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-node.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-node.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-node" '("ein:")))

;;;***

;;;### (autoloads nil "ein-notebook" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebook.el"
;;;;;;  "a5141e33318be591c4782f8b2101e524")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebook.el

(autoload 'ein:junk-new "ein-notebook" "\
Open a notebook to try random thing.
Notebook name is determined based on
`ein:junk-notebook-name-template'.

When prefix argument is given, it asks URL or port to use.

\(fn NAME KERNELSPEC URL-OR-PORT)" t nil)

(autoload 'ein:junk-rename "ein-notebook" "\
Rename the current notebook based on `ein:junk-notebook-name-template'
and save it immediately.

\(fn NAME)" t nil)

(defalias 'ein:notebook-name 'ein:$notebook-notebook-name)

;;;### (autoloads "actual autoloads are elsewhere" "ein-notebook"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebook.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebook.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-notebook" '("ein:")))

;;;***

;;;***

;;;### (autoloads nil "ein-notebooklist" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebooklist.el"
;;;;;;  "974d5331f733988df90a6ea72e83c7c7")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebooklist.el

(autoload 'ein:notebooklist-open "ein-notebooklist" "\
Open notebook list buffer.

\(fn &optional URL-OR-PORT PATH NO-POPUP)" t nil)

(autoload 'ein:notebooklist-refresh-kernelspecs "ein-notebooklist" "\


\(fn &optional URL-OR-PORT)" t nil)

(autoload 'ein:notebooklist-enable-keepalive "ein-notebooklist" "\
Enable periodic calls to the notebook server to keep long running sessions from expiring.
By long running we mean sessions to last days, or weeks. The
frequency of the refresh (which is very similar to a call to
`ein:notebooklist-open`) is controlled by
`ein:notebooklist-keepalive-refresh-time`, and is measured in
terms of hours. If `ein:enable-keepalive' is non-nil this will
automatically be called during calls to `ein:notebooklist-open`.

\(fn &optional URL-OR-PORT)" t nil)

(autoload 'ein:notebooklist-disable-keepalive "ein-notebooklist" "\
Disable the notebooklist keepalive calls to the jupyter notebook server.

\(fn)" t nil)

(autoload 'ein:notebooklist-reload "ein-notebooklist" "\
Reload current Notebook list.

\(fn &optional NOTEBOOKLIST)" t nil)

(autoload 'ein:notebooklist-upload-file "ein-notebooklist" "\


\(fn UPLOAD-PATH)" t nil)

(autoload 'ein:notebooklist-new-notebook "ein-notebooklist" "\
Ask server to create a new notebook and open it in a new buffer.

\(fn &optional URL-OR-PORT KERNELSPEC PATH CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-new-notebook-with-name "ein-notebooklist" "\
Open new notebook and rename the notebook.

\(fn NAME KERNELSPEC URL-OR-PORT &optional PATH)" t nil)

(autoload 'ein:notebooklist-list-notebooks "ein-notebooklist" "\
Return a list of notebook path (NBPATH).  Each element NBPATH
is a string of the format \"URL-OR-PORT/NOTEBOOK-NAME\".

\(fn)" nil nil)

(autoload 'ein:notebooklist-open-notebook-global "ein-notebooklist" "\
Choose notebook from all opened notebook list and open it.
Notebook is specified by a string NBPATH whose format is
\"URL-OR-PORT/NOTEBOOK-NAME\".

When used in lisp, CALLBACK and CBARGS are passed to `ein:notebook-open'.

\(fn NBPATH &optional CALLBACK CBARGS)" t nil)

(autoload 'ein:notebooklist-load "ein-notebooklist" "\
Load notebook list but do not pop-up the notebook list buffer.

For example, if you want to load notebook list when Emacs starts,
add this in the Emacs initialization file::

  (add-to-hook 'after-init-hook 'ein:notebooklist-load)

or even this (if you want fast Emacs start-up)::

  ;; load notebook list if Emacs is idle for 3 sec after start-up
  (run-with-idle-timer 3 nil #'ein:notebooklist-load)

You should setup `ein:url-or-port' or `ein:default-url-or-port'
in order to make this code work.

See also:
`ein:connect-to-default-notebook', `ein:connect-default-notebook'.

\(fn &optional URL-OR-PORT)" nil nil)

(autoload 'ein:notebooklist-login "ein-notebooklist" "\
Login to IPython notebook server.

\(fn URL-OR-PORT PASSWORD &optional RETRY-P)" t nil)

(autoload 'ein:notebooklist-change-url-port "ein-notebooklist" "\
Update the ipython/jupyter notebook server URL for all the
notebooks currently opened from the current notebooklist buffer.

This function works by calling `ein:notebook-update-url-or-port'
on all the notebooks opened from the current notebooklist.

\(fn NEW-URL-OR-PORT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-notebooklist"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebooklist.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebooklist.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-notebooklist" '("ein:" "generate-breadcrumbs" "render-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-notification"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notification.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-notification.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-notification" '("ein:")))

;;;***

;;;### (autoloads nil "ein-org" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-org.el"
;;;;;;  "f441da520e54fd3112f43dc203382ac5")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-org.el

(autoload 'ein:org-open "ein-org" "\
Open IPython notebook specified by LINK-PATH.
This function is to be used for FOLLOW function of
`org-add-link-type'.

\(fn LINK-PATH)" nil nil)

(autoload 'ein:org-store-link "ein-org" "\
Call `org-store-link-props' when in notebook buffer.
This function is to be used for `org-store-link-functions'.

Examples::

  ipynb:(:url-or-port 8888 :name \"My_Notebook\")
  ipynb:(:url-or-port \"http://notebook-server\" :name \"My_Notebook\")

Note that spaces will be escaped in org files.

As how IPython development team supports multiple directory in
IPython notebook server is unclear, it is not easy to decide the
format for notebook links.  Current approach is to use
S-expression based (rather verbose) serialization, so that
extending link spec without loosing backward compatibility is
easier.  For the examples of link format in general, see Info
node `(org) External links' and Info node `(org) Search options'

\(fn)" nil nil)

(eval-after-load "org" '(if (fboundp 'org-link-set-parameters) (org-link-set-parameters "ipynb" :follow 'ein:org-open :help-echo "Open ipython notebook." :store 'ein:org-store-link) (org-add-link-type "ipynb" :follow 'ein:org-open) (add-hook 'org-store-link-functions 'ein:org-store-link)))

;;;### (autoloads "actual autoloads are elsewhere" "ein-org" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-org.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-org.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-org" '("ein:org-goto-link")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-output-area"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-output-area.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-output-area.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-output-area" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-pager" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pager.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-pager.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-pager" '("ein:pager-")))

;;;***

;;;### (autoloads nil "ein-pseudo-console" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pseudo-console.el"
;;;;;;  "61aba9f673501a5fd338a8396c1b5bf2")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-pseudo-console.el

(autoload 'ein:pseudo-console-mode "ein-pseudo-console" "\
Pseudo console mode.  Hit RET to execute code.

If called interactively, enable Ein:Pseudo-Console mode if ARG is positive, and
disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it
if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-pseudo-console"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pseudo-console.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-pseudo-console.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-pseudo-console" '("ein:pseudo-console-mode-map")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-python" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-python.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-python.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-python" '("ein:python-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-pytools"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pytools.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-pytools.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-pytools" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-query" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-query.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-query.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-query" '("*ein:jupyterhub-servers*" "ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-scratchsheet"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-scratchsheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-scratchsheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-scratchsheet" '("ein:")))

;;;***

;;;### (autoloads nil "ein-shared-output" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-shared-output.el"
;;;;;;  "0ddb0113169aed9681c8e55bc503c393")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-shared-output.el

(autoload 'ein:shared-output-pop-to-buffer "ein-shared-output" "\
Open shared output buffer.

\(fn)" t nil)

(autoload 'ein:shared-output-show-code-cell-at-point "ein-shared-output" "\
Show code cell at point in shared-output buffer.
It is useful when the output of the cell at point is truncated.
See also `ein:cell-max-num-outputs'.

\(fn)" t nil)

(autoload 'ein:shared-output-eval-string "ein-shared-output" "\
Evaluate a piece of code.  Prompt will appear asking the code to run.
This is handy when you want to execute something quickly without
making a cell.  If the code outputs something, it will go to the
shared output buffer.  You can open the buffer by the command
`ein:shared-output-pop-to-buffer'.

.. ARGS is passed to `ein:kernel-execute'.  Unlike `ein:kernel-execute',
   `:silent' is `nil' by default.

\(fn CODE &optional POPUP VERBOSE KERNEL &rest ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-shared-output"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-shared-output.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-shared-output.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-shared-output" '("ein:")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-skewer" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-skewer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-skewer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-skewer" '("*ein:skewer-running-p*" "ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-smartrep"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-smartrep.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-smartrep.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-smartrep" '("ein:smartrep-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-subpackages"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-subpackages.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-subpackages.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-subpackages" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-timestamp"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-timestamp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-timestamp.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-timestamp" '("ein:")))

;;;***

;;;### (autoloads nil "ein-traceback" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-traceback.el"
;;;;;;  "5959b5120097523827a3a05e46e9e6ca")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-traceback.el

(autoload 'ein:tb-show "ein-traceback" "\
Show full traceback in traceback viewer.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "ein-traceback"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-traceback.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-traceback.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-traceback" '("ein:t")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-utils" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-utils.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-utils.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-utils" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-websocket"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-websocket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-websocket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-websocket" '("ein:websocket" "fix-request-netscape-cookie-parse")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ein-worksheet"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-worksheet.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ein-worksheet.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ein-worksheet" '("ein:")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "ob-ein" "../../../../.emacs.d/elpa/ein-20180626.1257/ob-ein.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/ein-20180626.1257/ob-ein.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "ob-ein" '("*ein:org-name-generator*" "ein:" "org-babel-")))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/ein-20180626.1257/debug-ein.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-ac.el" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell-edit.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell-output.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-cell.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-classes.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-company.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-completer.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-connect.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-console.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-contents-api.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-core.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-dev.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-events.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-file.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-helm.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-hy.el" "../../../../.emacs.d/elpa/ein-20180626.1257/ein-iexec.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-inspector.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipdb.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-ipynb-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jedi.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-junk.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyter.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-jupyterhub.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernel.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-kernelinfo.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-kill-ring.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-loaddefs.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-log.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang-fontify.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-multilang.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-node.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebook.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notebooklist.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-notification.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-org.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-output-area.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pager.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pseudo-console.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-python.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-pytools.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-query.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-scratchsheet.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-shared-output.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-skewer.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-smartrep.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-subpackages.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-timestamp.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-traceback.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-utils.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-websocket.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein-worksheet.el"
;;;;;;  "../../../../.emacs.d/elpa/ein-20180626.1257/ein.el" "../../../../.emacs.d/elpa/ein-20180626.1257/ob-ein.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ein-autoloads.el ends here
