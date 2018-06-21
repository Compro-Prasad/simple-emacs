(use-package tabbar-ruler
  :defer t
  :ensure t
  :init
  (setq tabbar-ruler-global-tabbar t)
  (require 'tabbar-ruler)
  (global-set-key [C-tab] 'tabbar-forward-tab)
  (global-set-key [C-S-tab] 'tabbar-backward-tab)
  (global-set-key [C-S-iso-lefttab] 'tabbar-backward-tab)
  (global-set-key [C-f4] 'kill-current-buffer)
  (eval-after-load 'org-mode
    (progn
      (require 'org)
      (define-key org-mode-map [C-tab] 'tabbar-forward-tab)
      (define-key org-mode-map [C-S-tab] 'tabbar-backward-tab)
      (define-key org-mode-map [C-S-iso-lefttab] 'tabbar-backward-tab)
      (define-key org-mode-map [C-f4] 'kill-current-buffer)))
  (eval-after-load "magit-mode"
    (progn
      (define-key magit-mode-map [C-tab] 'tabbar-forward-tab)
      (define-key magit-mode-map [C-S-tab] 'tabbar-backward-tab)
      (define-key magit-mode-map [C-S-iso-lefttab] 'tabbar-backward-tab)
      (define-key magit-mode-map [C-f4] 'kill-current-buffer)))
  :config
  (tabbar-ruler-group-by-projectile-project)
  (custom-set-faces
    '(tabbar-highlight ((t (:background "#272822"))))
    '(tabbar-selected ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :family "Sans Serif"))))
    '(tabbar-selected-modified ((t (:inherit tabbar-default :background "#272822" :foreground "tomato" :box nil :height 150 :family "Sans Serif"))))
    '(tabbar-unselected ((t (:inherit tabbar-selected :background "#444" :foreground "#aaa" :height 160))))
    '(tabbar-unselected-modified ((t (:inherit tabbar-selected-modified :background "#444"))))))
