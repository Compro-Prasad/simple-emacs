;; Python
(use-package py-autopep8
  :ensure t
  :init
  (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

(use-package anaconda-mode
  :ensure t
  :init
  (add-hook 'python-mode-hook 'anaconda-mode)
  (add-hook 'python-mode-hook 'anaconda-eldoc-mode))

(use-package pipenv :ensure t)

(use-package pyvenv :ensure t)

(eval-after-load 'python-mode
  (progn
    (require 'pipenv)
    (require 'pyvenv)))

;; Run any single file program using emacs-quickrun
(use-package quickrun
  :ensure t
  :bind
  (("<f9> <f9>" . quickrun)
   ("<f9> r" . quickrun-region)
   ("<f9> a" . quickrun-with-arg)
   ("<f9> s" . quickrun-shell)
   ("<f9> c" . quickrun-compile-only)
   ("<f9> R" . quickrun-replace-region))
  :init
  (progn
    (defun run-current-buffer-in-eshell ()
      "Run current buffer."
      (interactive)
      (save-window-excursion
        (call-interactively 'shell-pop))
      (call-interactively 'quickrun-shell))
    (tool-bar-add-item (expand-file-name "icons/run16" user-emacs-directory)
                       'run-current-buffer-in-eshell 'quickrun-button
                       :help   "Run current buffer.<F9 s>")))



;; Language Server Protocol implementation
(use-package lsp-mode
  :init
  (progn
    (require 'lsp-imenu)
    (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)
    (use-package company-lsp)
    (use-package lsp-ui
      :bind
      (:map lsp-ui-mode-map
            ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
            ([remap xref-find-references] . lsp-ui-peek-find-references)))))




;; C/C++
(use-package ccls
  :commands lsp-ccls-enable
  :init
  (defun ccls/enable ()
    "Enable ccls in current buffer."
    (interactive)
    (condition-case nil
        (lsp-ccls-enable)
      (user-error nil)))

  (defun ccls/enable-hook ()
    "Enable ccls whenever a C/C++ file opens."
    (interactive)
    (add-hook 'c-mode-common-hook #'ccls/enable))

  (defun ccls/disable-hook ()
    "Remove ccls from c-mode-common-hook."
    (interactive)
    (remove-hook 'c-mode-common-hook #'ccls/enable))

  (with-eval-after-load 'c++-mode
    (define-key c++-mode-map (kbd "M-.") 'lsp-ui-peek-jump-forward)
    (define-key c++-mode-map (kbd "M-,") 'lsp-ui-peek-jump-backward))

  ;; Remove this if you want to enable per buffer manually
  (ccls/enable-hook))

(provide 'simple-languages)
;;; simple-languages.el ends here
