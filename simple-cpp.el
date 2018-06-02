(use-package test-c
  :ensure t
  :bind (("<f9>" . 'test-c))
  :init
  (add-hook 'c-mode-common-hook 'test-c-mode))
