(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-lsp ccls lsp-ui lsp-mode go-mode aggressive-indent flx counsel-projectile quickrun ein rjsx-mode typescript-mode popwin tabbar-ruler tabbar eshell-git-prompt shell-pop atom-one-dark-theme monokai-theme anaconda-mode py-autopep8 impatient-mode simple-httpd httpd company-web undo-tree diff-hl company-quickhelp company-irony company-tern expand-region magit-gitflow flycheck-clang-analyzer flycheck hungry-delete))
 '(safe-local-variable-values
   '((web-mode-script-padding . 0)
     (web-mode-block-padding . 0)
     (web-mode-style-padding . 0)
     (web-mode-part-padding . 2)
     (c-file-offsets
      (substatement-open . 0)
      (arglist-intro . +)
      (arglist-close . +))))
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
 '(hl-line ((t (:background "#1d1a10"))))
 '(region ((t (:inherit default :inverse-video t))))
 '(tabbar-button ((t (:inherit default :box nil :height 104 :width normal :family "Sans Serif"))))
 '(tabbar-highlight ((t nil)))
 '(tabbar-selected ((t (:inherit default :stipple nil :weight normal :height 150 :width normal :family "Sans Serif"))))
 '(tabbar-selected-modified ((t (:inherit tabbar-default :background "#272822" :foreground "tomato" :box nil :height 150 :family "Sans Serif"))))
 '(tabbar-unselected ((t (:inherit tabbar-selected :background "#444" :foreground "#aaa" :height 160))))
 '(tabbar-unselected-modified ((t (:inherit tabbar-selected-modified :background "#444")))))
