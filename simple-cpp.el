(use-package test-c
  :ensure t
  :bind (("<C-f9>" . 'test-c))
  :init
  (add-hook 'c-mode-common-hook 'test-c-mode))
