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

;; C and C++
(use-package test-c
  :ensure t
  :defer t
  :bind (("<f9>" . 'test-c))
  :init
  (progn
    (require 'test-c)
    (add-hook 'c-mode-common-hook 'test-c-mode)))

(provide 'simple-languages)
;;; simple-python.el ends here
