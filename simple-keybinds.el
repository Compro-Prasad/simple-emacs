(bind-keys
;; Manage escaping out of errors
 ([escape] . keyboard-escape-quit)

 ("C-S-k" . simple-emacs/delete-line-backward)
 ("C-k" . simple-emacs/delete-line)
 ("M-d" . simple-emacs/delete-word)
 ("<M-backspace>" . simple-emacs/delete-word)
 ("<C-backspace>" . simple-emacs/delete-word)
 ("<M-delete>" . simple-emacs/delete-word)
 ("<C-delete>" . simple-emacs/delete-word)
 ("C-r" . simple-emacs/find-symbol)
 ("C-n" . simple-emacs/create-new-file)
 ("C-o" . simple-emacs/open-existing-file)
 ("C-/" . simple-emacs/toggle-comment)
 ("C-M-d" . simple-emacs/duplicate-line)

 ("M-+" . simple-emacs/increment-number)
 ("M-=" . simple-emacs/decrement-number)

 ("C-s" . save-buffer)
 ("C-a" . mark-whole-buffer)
 ("C-q" . save-buffers-kill-emacs)
 ("C-y" . quoted-insert)
 ("C-w" . kill-buffer)

 ;; Toggles
 ("C-t l" . display-line-numbers-mode)
 ("C-t m" . menu-bar-mode)
 ("C-t t" . tool-bar-mode)
 ("C-t s" . flycheck-mode)
 ("C-t c" . company-mode))
