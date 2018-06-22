(use-package treemacs
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  (global-set-key [left-fringe mouse-1] 'treemacs)
  (define-key treemacs-mode-map [right-fringe mouse-1] 'treemacs)
  (defun simple-emacs/switch-to-sidebar ()
    "Switch to side bar."
    (interactive)
    ;;(if (projectile-project-p)
     ;;   (treemacs--init (projectile-project-name))
    (treemacs--init default-directory))
  :config
  (progn
    (global-set-key [C-m] 'treemacs-delete-other-windows)
    (global-set-key (kbd "C-x 1") 'treemacs-delete-other-windows)
    (define-key treemacs-mode-map [mouse-1] 'treemacs-RET-action)
    (define-key treemacs-mode-map [mouse-3] 'treemacs-leftclick-action)
    (global-set-key (kbd "C-b") 'simple-emacs/switch-to-sidebar)
    (global-set-key (kbd "C-S-b") 'treemacs)
    (setq treemacs-collapse-dirs              (if (executable-find "python") 3 0)
          treemacs-file-event-delay           5000
          treemacs-follow-after-init          t
          treemacs-follow-recenter-distance   0.1
          treemacs-goto-tag-strategy          'refetch-index
          treemacs-indentation                2
          treemacs-indentation-string         " "
          treemacs-is-never-other-window      nil
          treemacs-no-png-images              nil
          treemacs-project-follow-cleanup     nil
          treemacs-persist-file               (expand-file-name ".cache/treemacs-persist" user-emacs-directory)
          treemacs-recenter-after-file-follow nil
          treemacs-recenter-after-tag-follow  nil
          treemacs-show-hidden-files          t
          treemacs-silent-filewatch           nil
          treemacs-silent-refresh             nil
          treemacs-sorting                    'alphabetic-desc
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
    (treemacs--init (x-file-dialog "Project Directory" default-directory "" t t)))
  (define-key global-map [menu-bar file open-project] '("Open Project" . simple-emacs/open-project)))
