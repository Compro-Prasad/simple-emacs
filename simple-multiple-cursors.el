(use-package multiple-cursors
  :ensure t
  :bind (("M-S-<up>" . mc/mark-previous-like-this)
         ("M-S-<down>" . mc/mark-next-like-this)
         ("M-<up>" . mc/skip-to-previous-like-this)
         ("M-<down>" . mc/skip-to-next-like-this)
         ("C-;" . mc/mark-all-like-this)
         ("M-S-<mouse-1>" . mc/add-cursor-on-click)
         ("M-S-<mouse-2>" . mc/add-cursor-on-click)
         ("M-S-<mouse-3>" . mc/add-cursor-on-click)))

(provide 'simple-multiple-cursors)
;;; simple-multiple-cursors.el ends here
