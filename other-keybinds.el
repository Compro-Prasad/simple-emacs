(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-S-f") 'isearch-backward)
(define-key isearch-mode-map (kbd "C-f") 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "C-S-f") 'isearch-repeat-backward)
(define-key isearch-mode-map [return] 'isearch-repeat-forward)
(define-key isearch-mode-map (kbd "\r") 'isearch-repeat-forward)
(define-key isearch-mode-map [S-return] 'isearch-repeat-backward)
(define-key isearch-mode-map [escape] 'isearch-exit)
(define-key isearch-mode-map "\e" 'isearch-exit)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-y") 'quoted-insert)
(global-set-key (kbd "C-w") 'kill-buffer)

(global-unset-key (kbd "C-t"))
(bind-keys
 ;; Some toggles
 ("C-S-t l" . display-line-numbers-mode)
 ("C-S-t m" . menu-bar-mode)
 ("C-S-t t" . tool-bar-mode)
 ("C-S-t s" . flycheck-mode)
 ("C-S-t c" . company-mode)
 ;; Manage escaping out of errors
 ([escape] . keyboard-escape-quit))

;; Open existing file using C-o
(defun simple-emacs/open-existing-file ()
  "Open an existing file from file chooser."
  (interactive)
  (find-file (x-file-dialog "Open file" default-directory "")))
(global-set-key (kbd "C-o") 'simple-emacs/open-existing-file)

;; Open a new file using C-n
(defvar simple-emacs/new-file-count 0
  "Count of new files.")

(defun simple-emacs/create-new-file ()
  "Create a new unsaved buffer."
  (interactive)
  (switch-to-buffer
   (concat "untitled-" (format "%d" simple-emacs/new-file-count)))
  (setq simple-emacs/new-file-count (1+ simple-emacs/new-file-count)))
(global-set-key (kbd "C-n") 'simple-emacs/create-new-file)
