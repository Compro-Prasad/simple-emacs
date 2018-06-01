(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(when (< emacs-major-version 26)
  (package-initialize))


;; Install use-package
(if (package-installed-p 'use-package)
    (require 'use-package)
  (package-install 'use-package))





;; UI confgurations

;; Better right click
(define-key global-map [mouse-3] menu-bar-edit-menu)

;; cursor type
(setq-default cursor-type '(bar . 2))
(blink-cursor-mode 1)

;; disable toolbar mode
;; (tool-bar-mode 0)

;; Highlight current line
(global-hl-line-mode 1)

;; Maximize current frame
(toggle-frame-maximized)

;; Startup message
(defun display-startup-echo-area-message ()
  (message "Let the hacking begin!"))

;; Better buffer naming style
(setq uniquify-buffer-name-style 'forward)

;; Scroll preserving screen position
(setq scroll-preserve-screen-position 'always)

;; Theme
(setq custom-safe-themes t)     ;; Themes are generally safe
(use-package spacemacs-common
    :ensure spacemacs-theme
    :config (load-theme 'spacemacs-dark t))




;; Internal Emacs configurations

;; Decrease frequency of GC
(setq gc-cons-threshold 10000000)

;; Fix line numbers
(setq line-number-display-limit-width 1000000)

;; Fixes some TLS connections
(setq gnutls-min-prime-bits 4096)

;; Saving history
(shell-command "mkdir ~/.emacs.d/.cache -p" nil nil)
(setq recentf-max-saved-items 512
      history-length t
      history-delete-duplicates t
      recentf-save-file "~/.emacs.d/.cache/recentf"
      savehist-file "~/.emacs.d/.cache/savehist"
      save-place-file "~/.emacs.d/.cache/saveplace"
      savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(setq-default save-place t)
(save-place-mode 1)
(savehist-mode 1)

;; Automatically save and restore sessions
(shell-command "mkdir ~/.emacs.d/.cache/desktop -p" nil nil)
(setq desktop-dirname             "~/.emacs.d/.cache/desktop/"
      desktop-base-file-name      "emacs.desktop"
      desktop-base-lock-name      "lock"
      desktop-path                (list desktop-dirname)
      desktop-save                t
      desktop-files-not-to-save   "^$" ;reload tramp paths
      desktop-load-locked-desktop nil
      desktop-auto-save-timeout   30)
(desktop-save-mode 1)

;; Handling backups
(shell-command "mkdir ~/.emacs.d/.cache/auto-save-list -p" nil nil)
(shell-command "mkdir ~/.emacs.d/.cache/backups -p" nil nil)
(setq backup-directory-alist '(("." . "~/.emacs.d/.cache/backups")))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/.cache/auto-save-list/" t)))





;; Text editing configurations

;; When typing on a selected region the marked region gets deleted
(delete-selection-mode 1)

;; Auto insert pairs of brackets and quotes
(electric-pair-mode 1)

;; No tabs, only spaces
(setq-default indent-tabs-mode nil)

;; Increase kill ring max capacity
(setq kill-ring-max 1024)

;; Handling trailing whitespaces in the buffer
(setq-default show-trailing-whitespace nil)
(defun my/set-show-whitespace-mode ()
  "Show white space in current buffer"
  (setq show-trailing-whitespace t))
;; Show whitespaces only in buffers pointing to specific files
(add-hook 'find-file-hook 'my/set-show-whitespace-mode)
;; Remove the trailing whitespaces on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; List identifiers through a right click
(use-package imenu
  :bind ("<C-S-mouse-1>" . imenu))

;; Auto revert externally edited files
(global-auto-revert-mode t)

;; Highlight matching parenthesis
(setq show-paren-style 'expression)
(show-paren-mode t)

;; Hungrily delete whitespace
(use-package hungry-delete
  :ensure t
  :init
  (global-hungry-delete-mode 1))




(cua-mode 1)




;; Other packages

;; Auto completion for Emacs lists
(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
          ("C-p" . helm-M-x)
          ("C-o" . helm-find-files)
          ("C-x C-f" . helm-find-files)
          ("C-b" . helm-buffers-list)
          ("C-x b" . helm-mini)
          ("C-v" . helm-show-kill-ring))
  :init
  (setq helm-candidate-number-limit       256  ;; number of items in completion list
        helm-M-x-fuzzy-match              t    ;; Fuzzy matching in M-x
        helm-buffers-fuzzy-matching       t
        helm-recentf-fuzzy-match          t
        helm-display-function             'helm-display-buffer-in-own-frame
        helm-display-buffer-reuse-frame   t
        helm-use-undecorated-frame-option t)
  :config
  (require 'helm-config)
  (helm-mode 1)
  (helm-autoresize-mode 1)
  (global-unset-key (kbd "C-x c")))

;; Syntax checking
(use-package flycheck
  :ensure t
  :hook (prog-mode . flycheck-mode)
  :config
  (setq flycheck-highlighting-mode 'lines)
  (custom-set-faces
   '(flycheck-error ((((class color)) (:underline "Red"))))
   '(flycheck-warning ((((class color)) (:underline "OrangeRed")))))
  (add-hook 'c++-mode-hook
            '(lambda ()
               (flycheck-select-checker 'c/c++-gcc))))

;; Clang analyzer
(use-package flycheck-clang-analyzer
  :ensure t
  :config
  (flycheck-clang-analyzer-setup))

;; Git integration
(use-package magit
  :ensure t
  :bind ("C-x g" . 'magit-status)
  :init
  (use-package magithub :ensure t)
  (use-package magit-gitflow :ensure t)
  :config
  (setq magit-diff-highlight-trailing t
        magit-diff-paint-whitespace t
        magit-diff-highlight-hunk-body t
        magit-diff-refine-hunk 'all))

;; Use web mode
(use-package web-mode
  :ensure t :defer t
  :mode "\\.\\(html\\|vue\\|htm\\)\\'")

;; Smart select regions
(use-package expand-region
  :ensure t
  :bind (("C-=" . er/expand-region)
         ("C-+" . er/contract-region)))

;; Project management
(use-package projectile
  :ensure t
  :bind-keymap ("C-c p" . projectile-command-map)
  :init
  (use-package helm-projectile
    :ensure t
    :init
    (helm-projectile-on))
  :config
  (projectile-mode 1))

;; Complete anything in Emacs
(use-package company
  :ensure t
  :init
  (use-package company-jedi :ensure t)
  (use-package company-tern :ensure t)
  (use-package company-irony :ensure t)
  (use-package company-quickhelp
    :ensure t
    :init (company-quickhelp-mode))
  (add-hook 'python-mode-hook 'company-jedi-start)
  (add-hook 'js-mode-hook 'tern-mode)
  (setq company-idle-delay 0.1
        company-minimum-prefix-length 2
        company-selection-wrap-around t
        company-show-numbers t
        company-require-match 'never
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case nil
        company-jedi-python-bin "python")
  :config
  (global-company-mode 1))

;; Better window switching
(use-package switch-window
  :defer t
  :bind
  (("M-\\" . switch-window)
   ("C-x 1" . switch-window-then-maximize)
   ("C-x 2" . switch-window-then-split-below)
   ("C-x 3" . switch-window-then-split-right)
   ("C-x 0" . switch-window-then-delete)

   ("C-x 4 d" . switch-window-then-dired)
   ("C-x 4 f" . switch-window-then-find-file)
   ("C-x 4 m" . switch-window-then-compose-mail)
   ("C-x 4 r" . switch-window-then-find-file-read-only)

   ("C-x 4 C-f" . switch-window-then-find-file)
   ("C-x 4 C-o" . switch-window-then-display-buffer)

   ("C-x 4 0" . switch-window-then-kill-buffer)))

;; Auto complete shortcuts
(use-package which-key
  :ensure t
  :init
  (which-key-mode 1))

;; Sidebar
(use-package treemacs-projectile
  :ensure t
  :bind (([f5] . treemacs)
         ([f6] . treemacs-projectile)))

;; Multiple cursors is here
(use-package multiple-cursors
  :ensure t
  :bind (("M-/" . mc--mark-symbol-at-point)
         ("C-S-c" . mc/edit-lines)
         ("M-S-<up>" . mc/mark-previous-like-this)
         ("M-<up>" . mc/skip-to-previous-like-this)
         ("M-S-<down>" . mc/mark-next-like-this)
         ("M-<down>" . mc/skip-to-next-like-this)
         ("C-;" . mc/mark-all-like-this)
         ("M-S-<mouse-1>" . mc/add-cursor-on-click)
         ("M-S-<mouse-2>" . mc/add-cursor-on-click)
         ("M-S-<mouse-3>" . mc/add-cursor-on-click)))

;; Highlight diffs in buffer
(use-package diff-hl
  :ensure t
  :hook (prog-mode . diff-hl-mode)
  :init (progn
          (setq diff-hl-side 'right)
          (diff-hl-margin-mode t)))

;; undo tree
(use-package undo-tree
  :ensure t :defer t
  :init (global-undo-tree-mode 1)
  :bind (("C-z" . undo)
         ("C-S-z" . undo-tree-visualize))
  :config
  (progn
    (defalias 'redo 'undo-tree-visualize)
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))

(use-package spaceline
  :ensure
  :init
  (require 'spaceline-config)
  (spaceline-spacemacs-theme))



(when (file-exists-p "~/.emacs.d/other-keybinds.el")
  (load-file "~/.emacs.d/other-keybinds.el"))



;; Convert 'yes and no' to 'y and n'
(fset 'yes-or-no-p 'y-or-n-p)


;; Set encoding to utf-8
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(set-locale-environment "en.UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT_STRING))



;; Customize file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
