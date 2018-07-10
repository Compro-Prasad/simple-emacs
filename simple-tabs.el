(use-package tabbar-ruler
  :defer t
  :ensure t
  :bind (([C-tab] . tabbar-forward-tab)
         ([C-S-tab] . tabbar-backward-tab)
         ([C-S-iso-lefttab] . tabbar-backward-tab)
         ([C-f4] . kill-current-buffer))
  :init
  (progn
    (setq tabbar-ruler-global-tabbar t)
    (require 'tabbar-ruler)
    (with-eval-after-load 'org
      (progn
        (define-key org-mode-map [C-tab] 'tabbar-forward-tab)
        (define-key org-mode-map [C-S-tab] 'tabbar-backward-tab)
        (define-key org-mode-map [C-S-iso-lefttab] 'tabbar-backward-tab)
        (define-key org-mode-map [C-f4] 'kill-current-buffer)))
    (with-eval-after-load 'magit
      (progn
        (define-key magit-mode-map [C-tab] 'tabbar-forward-tab)
        (define-key magit-mode-map [C-S-tab] 'tabbar-backward-tab)
        (define-key magit-mode-map [C-S-iso-lefttab] 'tabbar-backward-tab)
        (define-key magit-mode-map [C-f4] 'kill-current-buffer))))
  :config
  (progn
    (tabbar-ruler-group-by-projectile-project)
    (custom-set-faces
     '(tabbar-button ((t (:inherit default :box nil :height 104 :width normal :family "Sans Serif"))))
     '(tabbar-highlight ((t nil)))
     '(tabbar-selected ((t (:inherit default :stipple nil :weight normal :height 150 :width normal :family "Sans Serif"))))
     '(tabbar-selected-modified ((t (:inherit tabbar-default :background "#272822" :foreground "tomato" :box nil :height 150 :family "Sans Serif"))))
     '(tabbar-unselected ((t (:inherit tabbar-selected :background "#444" :foreground "#aaa" :height 160))))
     '(tabbar-unselected-modified ((t (:inherit tabbar-selected-modified :background "#444")))))))
