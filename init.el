(require 'package)
(require 'f)

(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


(when (< emacs-major-version 27)
  (package-initialize))


;; Install use-package
(if (package-installed-p 'use-package)
    (require 'use-package)
  (progn
    (package-refresh-contents)
    (package-install 'use-package)))



;; Setup cache directory
(f-mkdir user-emacs-directory ".cache")
(defvar simple-emacs/cache-dir
  (concat user-emacs-directory ".cache/")
  "The location where simple-emacs stores the .cache files.")
(f-mkdir simple-emacs/cache-dir "auto-save-list/")
(f-mkdir simple-emacs/cache-dir "backups/")
(f-mkdir simple-emacs/cache-dir "desktop/")




;; Internal Emacs configurations

;; Don't use C-m for RET
(define-key input-decode-map [?\C-m] [C-m])

;; Don't use C-i for TAB
(define-key input-decode-map [?\C-i] [C-i])

;; Don't use C-j for \n
(define-key input-decode-map [?\C-j] [C-j])

;; Dont use C-[ for ESC
(define-key input-decode-map [?\C-\[] (kbd "<C-[>"))

;; Convert 'yes and no' to 'y and n'
(fset 'yes-or-no-p 'y-or-n-p)

;; Increase stack size
(setq max-specpdl-size 32000)

;; Increase depth of eval
(setq max-lisp-eval-depth 2048)

;; Always load fresh .el files over byte-compiled ones
(setq load-prefer-newer t)

;; Decrease frequency of GC
(setq gc-cons-threshold 10000000)

;; Fix line numbers
(setq line-number-display-limit-width 1000000)

;; Fixes some TLS connections
(setq gnutls-min-prime-bits 4096)

(setq recentf-max-saved-items 512
      history-length t
      history-delete-duplicates t
      recentf-save-file (concat simple-emacs/cache-dir "recentf")
      savehist-file     (concat simple-emacs/cache-dir "savehist")
      save-place-file   (concat simple-emacs/cache-dir "saveplace")
      savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(setq-default save-place t)
(save-place-mode 1)
(savehist-mode 1)

;; Automatically save and restore sessions
(setq desktop-dirname             (concat simple-emacs/cache-dir "desktop/")
      desktop-base-file-name      "emacs.desktop"
      desktop-base-lock-name      "lock"
      desktop-path                (list desktop-dirname)
      desktop-save                t
      desktop-files-not-to-save   "^$" ;reload tramp paths
      desktop-load-locked-desktop nil
      desktop-auto-save-timeout   30)
(desktop-save-mode 1)

;; Handling backups
(setq backup-directory-alist `(("." . ,(concat simple-emacs/cache-dir "backups/"))))
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/.cache/auto-save-list/" t)))





;; UI configurations

;; scroll one line at a time
(setq scroll-step            1
      scroll-conservatively  10000
      mouse-wheel-scroll-amount '(1 ((shift) . 1)))

;; Better right click
(define-key global-map [mouse-3] menu-bar-edit-menu)

;; cursor type
(setq-default cursor-type '(bar . 2))
(blink-cursor-mode 1)

;; turn on line numbers for prog-mode only
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; disable toolbar mode
;; (tool-bar-mode 0)

;; Highlight current line
(add-hook 'prog-mode-hook 'hl-line-mode)

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
(use-package monokai-theme
  :ensure monokai-theme
  :defer t
  :init (load-theme 'monokai t))




;; Text editing configurations

;; When typing on a selected region the marked region gets deleted
(delete-selection-mode 1)

;; Auto insert pairs of brackets and quotes
(electric-pair-mode 1)

;; No tabs, only spaces
(setq-default indent-tabs-mode nil)

;; Increase kill ring max capacity
(setq kill-ring-max 1024)

;; Moving text
(use-package move-text
  :defer t :ensure t
  :bind (([C-S-up] . move-text-up)
         ([C-S-down] . move-text-down)))

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
  :defer t
  :bind ("<C-S-mouse-1>" . imenu))

;; Auto revert externally edited files
(global-auto-revert-mode t)

;; Highlight matching parenthesis
;; (setq show-paren-style 'expression)
(show-paren-mode t)

;; Hungrily delete whitespace
(use-package hungry-delete
  :ensure t
  :defer t
  :init
  (global-hungry-delete-mode 1))




(cua-mode 1)




;; Other packages

;; yasnippet
(use-package yasnippet
  :ensure t :defer t
  :init
  (use-package yasnippet-snippets
    :ensure t
    :defer t)
  (yas-global-mode 1))

;; Auto completion for Emacs lists
(use-package helm
  :ensure t
  :defer t
  :bind (("M-x" . helm-M-x)
          ("C-S-p" . helm-M-x)
          ("C-x C-f" . helm-find-files)
          ("C-x b" . helm-mini)
          ("C-S-v" . helm-show-kill-ring))
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
  :defer t
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
  :defer t
  :config
  (flycheck-clang-analyzer-setup))

;; Git integration
(use-package magit
  :ensure t
  :defer t
  :bind ("C-x g" . 'magit-status)
  :init
  (use-package magithub :ensure t :defer t)
  (use-package magit-gitflow :ensure t :defer t)
  :config
  (with-eval-after-load 'elscreen
    (define-key magit-mode-map [C-tab] 'elscreen-next))
  (setq magit-diff-highlight-trailing t
        magit-diff-paint-whitespace t
        magit-diff-highlight-hunk-body t
        magit-diff-refine-hunk 'all))

;; Use web mode
(use-package web-mode
  :ensure t :defer t
  :mode "\\.\\(html\\|vue\\|htm\\)\\'"
  :init
  (use-package simple-httpd
    :ensure t
    :defer t
    :init
    (httpd-start))
  (use-package impatient-mode
    :ensure t
    :defer t
    :init
    (add-hook 'web-mode-hook 'impatient-mode)))

;; Smart select regions
(use-package expand-region
  :ensure t
  :defer t
  :bind (("C-=" . er/expand-region)
         ("C-+" . er/contract-region)))

;; Complete anything in Emacs
(use-package company
  :ensure t
  :init
  (use-package company-anaconda
    :ensure t
    :init
    (eval-after-load 'company
      '(add-to-list 'company-backends '(company-anaconda :with company-capf))))
  (use-package company-tern :ensure t)
  (use-package company-irony :ensure t)
  (use-package company-web :ensure t
    :config
    (defun my-web-mode-hook ()
      "Hook for `web-mode'."
      (set (make-local-variable 'company-backends)
           '(company-tern company-web-html company-css company-yasnippet company-files)))
    (add-hook 'web-mode-hook 'my-web-mode-hook))
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
  :ensure t
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
  :defer t
  :init
  (which-key-mode 1))

;; Highlight diffs in buffer
(use-package diff-hl
  :ensure t :defer t
  :hook (prog-mode . diff-hl-mode)
  :init (progn
          (setq diff-hl-side 'right)
          (diff-hl-margin-mode t)))

;; undo tree
(use-package undo-tree
  :ensure t :defer t
  :bind (("C-z" . undo-tree-undo)
         ("C-S-z" . undo-tree-redo)
         ("C-/" . undo-tree-visualize)
         :map undo-tree-map
         ("C-/" . undo-tree-visualize))
  :init (global-undo-tree-mode 1)
  :config
  (progn
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)
    (setq undo-tree-auto-save-history 1)
    (f-mkdir simple-emacs/cache-dir "undo-backup")
    (custom-set-variables
     '(undo-tree-history-directory-alist
       `(("." . ,(concat simple-emacs/cache-dir "undo-backup/"))))
     )))


(defun simple-emacs/load-file (file)
  "Load FILE which should be written in Emacs Lisp."
  (when (file-readable-p file)
    (load-file file)))

(defun simple-emacs/load-files (filelist)
  "Load FILELIST which should be a list of Emacs Lisp files."
  (dolist (file filelist)
    (simple-emacs/load-file file)))

;; Other keybindings
(simple-emacs/load-files
 '(
   "~/.emacs.d/other-config.el"
   "~/.emacs.d/other-keybinds.el"
   "~/.emacs.d/simple-tabs.el"
   "~/.emacs.d/simple-sidebar.el"
   "~/.emacs.d/simple-multiple-cursors.el"
   "~/.emacs.d/simple-project.el"
   "~/.emacs.d/simple-python.el"
   "~/.emacs.d/simple-cpp.el"
   "~/.emacs.d/simple-shell.el"
   ))




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


(provide 'init)
;;; init.el ends here
