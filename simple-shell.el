(use-package shell-pop
  :ensure t
  :defer t
  :init
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(shell-pop-default-directory ,default-directory)
   '(shell-pop-shell-type (quote ("eshell" "*eshell*" (lambda nil (eshell)))))
   '(shell-pop-term-shell "/bin/bash")
   '(shell-pop-universal-key "C-'")
   '(shell-pop-window-size 30)
   '(shell-pop-full-span t)
   '(shell-pop-window-position "bottom"))
  (add-hook 'org-mode-hook (lambda ()
                            (define-key org-mode-map (kbd "C-'") 'shell-pop))))

(use-package eshell-git-prompt
  :ensure t :defer t
  :init
  (eshell-git-prompt-use-theme 'robbyrussell))

(defun simple-emacs/init-eshell ()
  "Initialize shell"
  ;; This is an eshell alias
  (defun eshell/clear ()
    (let ((inhibit-read-only t))
      (erase-buffer)))
  ;; This is a key-command
  (defun simple-emacs/eshell-clear-keystroke ()
    "Allow for keystrokes to invoke eshell/clear"
    (interactive)
    (eshell/clear)
    (eshell-send-input))
  ;; Caution! this will erase buffer's content at C-l
  (define-key eshell-mode-map (kbd "C-l") 'simple-emacs/eshell-clear-keystroke)
  (define-key eshell-mode-map (kbd "C-d") 'eshell-delchar-or-maybe-eof))

(add-hook 'eshell-mode-hook 'simple-emacs/init-eshell)


(provide 'simple-shell)
