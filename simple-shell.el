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
   '(shell-pop-window-position "bottom")))

(use-package eshell-did-you-mean
  :ensure t
  :defer t
  :init
  (eshell-did-you-mean-setup))

(use-package eshell-fringe-status
  :ensure t :defer t
  :init
  (add-hook 'eshell-mode-hook 'eshell-fringe-status-mode))

(use-package eshell-git-prompt
  :ensure t :defer t
  :init
  (eshell-git-prompt-use-theme 'powerline))


(defun clear-buffer (func)
  "Execute FUNC after clearing buffer."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (funcall func)))

(defun eshell-clear-buffer ()
  "Clear terminal."
  (interactive)
  (clear-buffer 'eshell-send-input))

(define-key 'eshell-mode-map (kbd "C-l") 'eshell-clear-buffer)


(provide 'simple-shell)
