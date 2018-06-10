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

(provide 'simple-python)
;;; simple-python.el ends here
