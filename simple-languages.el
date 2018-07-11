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
   ("<f9> R" . quickrun-replace-region)))

(provide 'simple-languages)
;;; simple-languages.el ends here
