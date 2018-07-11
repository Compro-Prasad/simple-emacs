(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(quickrun ein rjsx-mode typescript-mode popwin tabbar-ruler tabbar eshell-git-prompt eshell-fringe-status eshell-did-you-mean shell-pop atom-one-dark-theme monokai-theme pyvenv pipenv anaconda-mode py-autopep8 impatient-mode simple-httpd httpd switch-window company-web undo-tree diff-hl multiple-cursors treemacs-projectile which-key company-quickhelp company-irony company-tern company helm-projectile helm-ag projectile expand-region web-mode magit-gitflow magithub magit flycheck-clang-analyzer flycheck helm yasnippet-snippets yasnippet hungry-delete use-package))
 '(shell-pop-default-directory (\, default-directory))
 '(shell-pop-full-span t)
 '(shell-pop-shell-type '("eshell" "*eshell*" (lambda nil (eshell))))
 '(shell-pop-term-shell "/bin/bash")
 '(shell-pop-universal-key "C-'")
 '(shell-pop-window-position "bottom")
 '(shell-pop-window-size 30)
 '(undo-tree-history-directory-alist '(("." . "~/.emacs.d/.cache/undo-backup"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-error ((((class color)) (:underline "Red"))))
 '(flycheck-warning ((((class color)) (:underline "OrangeRed"))))
 '(tabbar-button ((t (:inherit default :box nil :height 104 :width normal :family "Sans Serif"))))
 '(tabbar-highlight ((t nil)))
 '(tabbar-selected ((t (:inherit default :stipple nil :weight normal :height 150 :width normal :family "Sans Serif"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :background "#272822" :foreground "tomato" :box nil :height 150 :family "Sans Serif"))))
 '(tabbar-unselected ((t (:inherit tabbar-selected :background "#444" :foreground "#aaa" :height 160))))
 '(tabbar-unselected-modified ((t (:inherit tabbar-selected-modified :background "#444")))))
