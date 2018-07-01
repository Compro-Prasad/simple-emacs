(global-unset-key (kbd "C-t"))
(bind-keys
;; Manage escaping out of errors
 ([escape] . keyboard-escape-quit)

 ("C-S-k" . simple-emacs/delete-line-backward)
 ("C-k" . simple-emacs/delete-line)
 ("M-d" . simple-emacs/delete-word)
 ("<M-backspace>" . simple-emacs/backward-delete-word)
 ("<C-backspace>" . simple-emacs/backward-delete-word)
 ("<M-delete>" . simple-emacs/delete-word)
 ("<C-delete>" . simple-emacs/delete-word)
 ("C-r" . simple-emacs/find-symbol)
 ("C-n" . simple-emacs/create-new-file)
 ("C-o" . simple-emacs/open-existing-file)

 ("C-f"   . isearch-forward)
 ("C-S-f" . isearch-backward)

 ("C-s" . save-buffer)
 ("C-a" . mark-whole-buffer)
 ("C-q" . save-buffers-kill-emacs)
 ("C-y" . quoted-insert)
 ("C-w" . kill-buffer)

 ;; Toggles
 ("C-S-t l" . display-line-numbers-mode)
 ("C-S-t m" . menu-bar-mode)
 ("C-S-t t" . tool-bar-mode)
 ("C-S-t s" . flycheck-mode)
 ("C-S-t c" . company-mode)

 :map isearch-mode-map
 ("C-f"      . isearch-repeat-forward)
 ("C-S-f"    . isearch-repeat-backward)
 ([return]   . isearch-repeat-forward)
 ("\r"       . isearch-repeat-forward)
 ([S-return] . isearch-repeat-backward)
 ([escape]   . isearch-exit)
 ("\e"       . isearch-exit))
