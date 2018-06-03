;; Project management
(use-package projectile
  :ensure t
  :bind-keymap ("C-p" . projectile-command-map)
  :bind (:map projectile-command-map
              (":" . goto-line)
              ("C-p" . helm-projectile)
              ("p" . helm-projectile))
  :init
  (use-package helm-ag :ensure t)
  (use-package helm-projectile
    :ensure t
    :init
    (helm-projectile-on))
  :config
  (projectile-mode 1))

(provide 'simple-project)
;;; simple-project.el ends here
