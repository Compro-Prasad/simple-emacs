(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
(global-set-key (kbd "C-q") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-w") 'kill-buffer)

(global-unset-key (kbd "C-t"))
(global-set-key (kbd "C-t l") 'linum-mode)
(global-set-key (kbd "C-t m") 'menu-bar-mode)
(global-set-key (kbd "C-t t") 'tool-bar-mode)

(global-set-key (kbd "M-ESC") 'keyboard-quit)
