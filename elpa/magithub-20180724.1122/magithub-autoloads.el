;;; magithub-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "magithub" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub.el"
;;;;;;  "0e5cdbaed49a7140627f9e15cdabbedf")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub.el
 (autoload 'magithub-dispatch-popup "magithub" nil t)

(eval-after-load 'magit '(progn (magit-define-popup-action 'magit-dispatch-popup 72 "Magithub" #'magithub-dispatch-popup 33) (define-key magit-status-mode-map "H" #'magithub-dispatch-popup)))

;;;### (autoloads "actual autoloads are elsewhere" "magithub" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub" '("magithub-")))

;;;***

;;;***

;;;### (autoloads nil "magithub-ci" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-ci.el"
;;;;;;  "a4b716af7869955249a7c1d8a4cda39b")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-ci.el

(autoload 'magithub-maybe-insert-ci-status-header "magithub-ci" "\
If this is a GitHub repository, insert the CI status header.

\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-ci"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-ci.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-ci.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-ci" '("magit")))

;;;***

;;;***

;;;### (autoloads nil "magithub-comment" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-comment.el"
;;;;;;  "6eeade281be90dd15018c0555a8baa51")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-comment.el

(autoload 'magithub-comment-new "magithub-comment" "\
Comment on ISSUE in a new buffer.
If prefix argument DISCARD-DRAFT is specified, the draft will not
be considered.

If INITIAL-CONTENT is specified, it will be inserted as the
initial contents of the reply if there is no draft.

\(fn ISSUE &optional DISCARD-DRAFT INITIAL-CONTENT)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-comment"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-comment.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-comment.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-comment" '("magit")))

;;;***

;;;***

;;;### (autoloads nil "magithub-completion" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-completion.el"
;;;;;;  "fb1c946bfd85c0ed37f061f16da65af7")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-completion.el

(autoload 'magithub-completion-complete-issues "magithub-completion" "\
A `completion-at-point' function which completes \"#123\" issue references.
Add this to `completion-at-point-functions' in buffers where you
want this to be available.

\(fn)" nil nil)

(autoload 'magithub-completion-complete-users "magithub-completion" "\
A `completion-at-point' function which completes \"@user\" user references.
Add this to `completion-at-point-functions' in buffers where you
want this to be available.  The user list is currently simply the
list of all users who created issues or pull requests.

\(fn)" nil nil)

(autoload 'magithub-completion-enable "magithub-completion" "\
Enable completion of info from magithub in the current buffer.

\(fn)" nil nil)

;;;***

;;;### (autoloads nil "magithub-core" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-core.el"
;;;;;;  "4e6b30bb4484612d2bd259734c66af95")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-core.el

(autoload 'magithub-feature-autoinject "magithub-core" "\
Configure FEATURE to recommended settings.
If FEATURE is `all' or t, all known features will be loaded.  If
FEATURE is a list, then it is a list of FEATURE symbols to load.

See `magithub-feature-list' for a list of available features and
`magithub-features' for a list of currently-installed features.

\(fn FEATURE)" nil nil)

(autoload 'magithub--section-value-at-point "magithub-core" "\
Determine the thing of TYPE at point.
This is intended for use as a resolving function for
`thing-at-point'.

The following symbols are defined, but other values may work with
this function: `github-user', `github-issue', `github-label',
`github-comment', `github-repository', `github-pull-request',
`github-notification',

\(fn TYPE)" nil nil)

(put 'github-user 'thing-at-point (lambda nil (magithub--section-value-at-point 'user)))

(put 'github-issue 'thing-at-point (lambda nil (or magithub-issue (magithub--section-value-at-point 'issue))))

(put 'github-label 'thing-at-point (lambda nil (magithub--section-value-at-point 'label)))

(put 'github-comment 'thing-at-point (lambda nil (or magithub-comment (magithub--section-value-at-point 'comment))))

(put 'github-notification 'thing-at-point (lambda nil (magithub--section-value-at-point 'notification)))

(put 'github-repository 'thing-at-point (lambda nil (or (magithub--section-value-at-point 'repository) magithub-repo (magithub-repo))))

(put 'github-pull-request 'thing-at-point (lambda nil (or (magithub--section-value-at-point 'pull-request) (when-let ((issue (thing-at-point 'github-issue))) (and (magithub-issue--issue-is-pull-p issue) (magithub-cache :issues `(magithub-request (ghubp-get-repos-owner-repo-pulls-number ',(magithub-issue-repo issue) ',issue))))))))

;;;### (autoloads "actual autoloads are elsewhere" "magithub-core"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-core.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-core.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-core" '("magit")))

;;;***

;;;***

;;;### (autoloads nil "magithub-dash" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-dash.el"
;;;;;;  "f0d7ee1870ca7ab5e2077a12e2913705")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-dash.el

(autoload 'magithub-dashboard "magithub-dash" "\
View your GitHub dashboard.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-dash"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-dash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-dash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-dash" '("magithub-dash")))

;;;***

;;;***

;;;### (autoloads nil "magithub-edit-mode" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-edit-mode.el"
;;;;;;  "c00c87adba84eb12ecf0466f042b8ca0")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-edit-mode.el

(autoload 'magithub-edit-mode "magithub-edit-mode" "\
Major mode for editing GitHub issues and pull requests.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-edit-mode"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-edit-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-edit-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-edit-mode" '("magithub-edit-")))

;;;***

;;;***

;;;### (autoloads nil "magithub-issue" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue.el"
;;;;;;  "71c930ef4eed3ef9f827dd3488be018f")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue.el

(autoload 'magithub-issue--insert-issue-section "magithub-issue" "\
Insert GitHub issues if appropriate.

\(fn)" nil nil)

(autoload 'magithub-issue--insert-pr-section "magithub-issue" "\
Insert GitHub pull requests if appropriate.

\(fn)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-issue"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-issue" '("magit")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magithub-issue-post"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-post.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-post.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-issue-post" '("magithub-")))

;;;***

;;;### (autoloads nil "magithub-issue-tricks" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-tricks.el"
;;;;;;  "f4af1ae046290fee5c82f871e12fe024")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-tricks.el

(autoload 'magithub-pull-request-merge "magithub-issue-tricks" "\
Merge PULL-REQUEST with ARGS.
See `magithub-pull-request--completing-read'.  If point is on a
pull-request object, that object is selected by default.

\(fn PULL-REQUEST &optional ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-issue-tricks"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-tricks.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-tricks.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-issue-tricks" '("magithub-")))

;;;***

;;;***

;;;### (autoloads nil "magithub-issue-view" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-view.el"
;;;;;;  "82741d0d91372c3dee0645108b942561")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-view.el

(autoload 'magithub-issue-view "magithub-issue-view" "\
View ISSUE in a new buffer.
Return the new buffer.

\(fn ISSUE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-issue-view"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-view.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-view.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-issue-view" '("magithub-issue-view-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magithub-label"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-label.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-label.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-label" '("magit")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magithub-notification"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-notification.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-notification.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-notification" '("magit")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magithub-orgs"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-orgs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-orgs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-orgs" '("magithub-orgs-list")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magithub-repo"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-repo.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-repo.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-repo" '("magit")))

;;;***

;;;### (autoloads nil "magithub-settings" "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-settings.el"
;;;;;;  "6e0c1d72e0e818178387cdfb0eced998")
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-settings.el
 (autoload 'magithub-settings-popup "magithub-settings" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "magithub-settings"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-settings.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-settings.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-settings" '("magithub-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magithub-user"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-user.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-user.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magithub-user" '("magit")))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-ci.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-comment.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-completion.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-core.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-dash.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-edit-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-faces.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-post.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-tricks.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue-view.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-issue.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-label.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-notification.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-orgs.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-repo.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-settings.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub-user.el"
;;;;;;  "../../../../.emacs.d/elpa/magithub-20180724.1122/magithub.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; magithub-autoloads.el ends here
