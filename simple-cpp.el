(use-package test-c
  :ensure t
  :defer t
  :bind (("<f9>" . 'test-c))
  :init
  (add-hook 'c-mode-common-hook 'test-c-mode))
