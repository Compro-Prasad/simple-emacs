;;; treemacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "treemacs" "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs.el"
;;;;;;  "fbcb3d51ed945531beceda0b7507bd3b")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs.el

(autoload 'treemacs-version "treemacs" "\
Return `treemacs-version'.

\(fn)" t nil)

(autoload 'treemacs "treemacs" "\
Initialize or toggle treemacs.
* If the treemacs window is visible hide it.
* If a treemacs buffer exists, but is not visible show it.
* If no treemacs buffer exists for the current frame create and show it.
* If the workspace is empty additionally ask for the root path of the first
  project to add.

\(fn)" t nil)

(autoload 'treemacs-bookmark "treemacs" "\
Find a bookmark in treemacs.
Only bookmarks marking either a file or a directory are offered for selection.
Treemacs will try to find and focus the given bookmark's location, in a similar
fashion to `treemacs-find-file'.

With a prefix argument ARG treemacs will also open the bookmarked location.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-find-file "treemacs" "\
Find and focus the current file in the treemacs window.
If the current buffer has visits no file or with a prefix ARG ask for the
file instead.
Will show/create a treemacs buffers if it is not visible/does not exist.
For the most part only useful when `treemacs-follow-mode' is not active.

\(fn &optional ARG)" t nil)

(autoload 'treemacs-find-tag "treemacs" "\
Find and move point to the tag at point in the treemacs view.
Most likley to be useful when `treemacs-tag-follow-mode' is not active.

Will ask to change the treemacs root if the file to find is not under the
root. If no treemacs buffer exists it will be created with the current file's
containing directory as root. Will do nothing if the current buffer is not
visiting a file or Emacs cannot find any tags for the current file.

\(fn)" t nil)

(autoload 'treemacs-select-window "treemacs" "\
Select the treemacs window if it is visible.
Bring it to the foreground if it is not visible.
Initialize a new treemacs buffer as calling `treemacs' would if there is no
treemacs buffer for this frame.

\(fn)" t nil)

(autoload 'treemacs-show-changelog "treemacs" "\
Show the changelog of treemacs.

\(fn)" t nil)

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-async"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-async.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-async.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-async" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-branch-creation"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-branch-creation.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-branch-creation.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-branch-creation" '("treemacs--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-compatibility"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-compatibility.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-compatibility.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-compatibility" '("treemacs--split-window-advice")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-customization"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-customization.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-customization.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-customization" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-filewatch-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-filewatch-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-filewatch-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-filewatch-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-follow-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-follow-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-fringe-indicator"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-fringe-indicator.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-fringe-indicator.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-fringe-indicator" '("treemacs-")))

;;;***

;;;### (autoloads nil "treemacs-icons" "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-icons.el"
;;;;;;  "fc2cdd439e206748b75c2718bdd3ae66")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-icons.el

(autoload 'treemacs-resize-icons "treemacs-icons" "\
SIZE in pixels icons should be resized to.

If SIZE is 'nil' the icons are not resized and will retain their default size of
22 pixels.

There is only one size, the icons are square and the aspect ratio will be
preserved when resizing them therefore width and height are the same.

Resizing the icons only works if Emacs was built with ImageMagick support. If
this is not the case this function will report an error.

Custom icons are not taken into account, only the site of treemacs' own icons
is changed.

\(fn SIZE)" t nil)

(autoload 'treemacs-define-custom-icon "treemacs-icons" "\
Define a custom ICON to use for FILE-EXTENSIONS.

Note that treemacs has a very loose definition of what constitutes a file
extension - it's either everything past the last period, or just the file's full
name if there is no period. This makes it possible to match file names like
'.gitignore' and 'Makefile'.

FILE-EXTENSIONS are also not case sensitive and will be downcased before they're
inserted into `treemacs-icons-hash'.

\(fn ICON &rest FILE-EXTENSIONS)" nil nil)

(autoload 'treemacs-map-icons-with-auto-mode-alist "treemacs-icons" "\
Remaps icons for EXTENSIONS according to `auto-mode-alist'.
EXTENSIONS should be a list of file extensions such that they match the regex
stored in `auto-mode-alist', for example '(\".cc\").
MODE-ICON-ALIST is an alist that maps which mode from `auto-mode-alist' should
be assigned which treemacs icon, for exmaple
'((c-mode . treemacs-icon-c)
  (c++-mode . treemacs-icon-cpp))

\(fn EXTENSIONS MODE-ICON-ALIST)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-icons"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-icons.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-icons.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-icons" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-impl"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-impl.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-impl.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-impl" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-interface"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-interface.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-interface" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-macros"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-macros.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-macros.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-macros" '("-defstruct" "-if-let-" "-let" "-pcase" "-unless-let" "-when-let-" "only-during-treemacs-init" "treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-magit"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-magit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-magit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-magit" '("treemacs-magit--")))

;;;***

;;;### (autoloads nil "treemacs-mode" "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mode.el"
;;;;;;  "698917d499278fae0ec94b06d88d9c46")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mode.el

(autoload 'treemacs-mode "treemacs-mode" "\
A major mode for displaying the file system in a tree layout.

\(fn)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-mode" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads nil "treemacs-mouse-interface" "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mouse-interface.el"
;;;;;;  "6f2bba62e46291be65e07706d83eee4d")
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mouse-interface.el

(autoload 'treemacs-node-buffer-and-position "treemacs-mouse-interface" "\
Return source buffer or list of buffer and position for the current node.
This information can be used for future display. Stay in the selected window and
ignore any prefix argument.

\(fn &optional _)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-mouse-interface"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mouse-interface.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mouse-interface.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-mouse-interface" '("treemacs-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-persistence"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-persistence.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-persistence.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-persistence" '("treemacs--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-structure"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-structure.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-structure.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-structure" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-tag-follow-mode"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-tag-follow-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-tag-follow-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-tag-follow-mode" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-tags"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-tags.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-tags.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-tags" '("treemacs--")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-visuals"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-visuals.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-visuals.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-visuals" '("treemacs-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "treemacs-workspaces"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-workspaces.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-workspaces.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "treemacs-workspaces" '("treemacs-")))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-async.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-branch-creation.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-compatibility.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-customization.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-faces.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-filewatch-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-follow-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-fringe-indicator.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-icons.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-impl.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-interface.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-macros.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-magit.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-mouse-interface.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-persistence.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-structure.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-tag-follow-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-tags.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-visuals.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs-workspaces.el"
;;;;;;  "../../../../.emacs.d/elpa/treemacs-20180723.2237/treemacs.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; treemacs-autoloads.el ends here
