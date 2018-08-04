(use-package multiple-cursors
  :ensure t
  :bind
  (("C-S-l" . mc/edit-lines)
   ("C-d" . mc/mark-next-like-this)
   ("C-S-d" . mc/mark-previous-like-this)
   ("C-c C-<" . mc/mark-all-like-this)
   ("M-S-<mouse-1>" . mc/add-cursor-on-click)
   ("M-S-<mouse-2>" . mc/add-cursor-on-click)
   ("M-S-<mouse-3>" . mc/add-cursor-on-click)
   :map mc/keymap
   ("M-<down>" . mc/cycle-forward)
   ("M-<up>" . mc/cycle-backward)
   ("M-S-<down>" . mc/skip-to-next-like-this)
   ("M-S-<up>" . mc/skip-to-previous-like-this))
  :init
  (progn
    (require 'mc-cycle-cursors)

    (defvar mc-last-direction 0
      "Records the last direction of multiple cursor.")

    (defun jump-to-next-cursor (another)
      (call-interactively
       (if (= mc-last-direction -1)
           'mc/cycle-backward
         'mc/cycle-forward))
      (setq mc-last-direction 1))

    (defun jump-to-previous-cursor (another)
      (call-interactively
       (if (= mc-last-direction 1)
           'mc/cycle-forward
         'mc/cycle-backward))
      (setq mc-last-direction -1))

    (defun reset-cursors (another)
      (setq mc-last-direction 0))

    (advice-add 'mc/mark-next-like-this
                :after 'jump-to-next-cursor)
    (advice-add 'mc/mark-previous-like-this
                :after 'jump-to-previous-cursor)
    (advice-add 'multiple-cursors-mode
                :after 'reset-cursors)))

(provide 'simple-multiple-cursors)
;;; simple-multiple-cursors.el ends here
