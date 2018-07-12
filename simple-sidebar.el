(use-package treemacs
  :ensure t
  :defer t
  :bind (([C-m] . treemacs-delete-other-windows)
         ("C-x 1" . treemacs-delete-other-windows)
         ("C-b" . treemacs)
         :map treemacs-mode-map
         ([right-fringe mouse-1] . treemacs)
         ([mouse-1] . treemacs-RET-action)
         ([mouse-3] . treemacs-leftclick-action))
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  (global-set-key [left-fringe mouse-1] 'treemacs)
  :config
  (progn
    (setq treemacs-collapse-dirs              (if (executable-find "python") 3 0)
          treemacs-file-event-delay           5000
          treemacs-follow-after-init          t
          treemacs-follow-recenter-distance   0.1
          treemacs-goto-tag-strategy          'refetch-index
          treemacs-indentation                1
          treemacs-indentation-string         " "
          treemacs-is-never-other-window      t
          treemacs-no-png-images              nil
          treemacs-project-follow-cleanup     nil
          treemacs-persist-file               (concat simple-emacs/cache-dir "treemacs-persist")
          treemacs-recenter-after-file-follow nil
          treemacs-recenter-after-tag-follow  nil
          treemacs-show-hidden-files          nil
          treemacs-silent-filewatch           t
          treemacs-silent-refresh             t
          treemacs-sorting                    'alphabetic-case-insensitive-asc
          treemacs-space-between-root-nodes   t
          treemacs-tag-follow-cleanup         t
          treemacs-tag-follow-delay           1.5
          treemacs-width                      35)

    ;; The default width and height of the icons is 22 pixels. If you are
    ;; using a Hi-DPI display, uncomment this to double the icon size.
    ;;(treemacs-resize-icons 44)

    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (pcase (cons (not (null (executable-find "git")))
                 (not (null (executable-find "python3"))))
      (`(t . t)
       (treemacs-git-mode 'extended))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
        ("M-0"       . treemacs-select-window)
        ("C-x t 1"   . treemacs-delete-other-windows)
        ("C-x t t"   . treemacs)
        ("C-x t B"   . treemacs-bookmark)
        ("C-x t C-t" . treemacs-find-file)
        ("C-x t M-t" . treemacs-find-tag)))

(use-package treemacs-projectile
  :after projectile
  :ensure t
  :init
  (require 'treemacs)
  (defun simple-emacs/open-project ()
    "Open project."
    (interactive)
    (if (fboundp 'x-file-dialog)
        (let ((project-dir (x-file-dialog "Project Directory" default-directory "" t t)))
        (treemacs-add-project-at project-dir (simple-emacs/basename project-dir)))
      (call-interactively 'treemacs-add-project)))
  (define-key global-map [menu-bar file open-project] '("Open Folder" . simple-emacs/open-project)))
