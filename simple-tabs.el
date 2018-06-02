(use-package elscreen
  :ensure t
  :bind (("C-o" . elscreen-find-file)
         ("C-n" . elscreen-find-file)
         ("C-x C-f" . elscreen-find-file)
         ("C-w" . elscreen-kill-screen-and-buffers)
         ("<C-tab>" . elscreen-next)
         ("<C-S-tab>" . elscreen-previous)
         ("<C-iso-lefttab>" . elscreen-previous))
  :init
  (defun elscreen-goto-1 () (interactive) (elscreen-goto 1))
  (defun elscreen-goto-2 () (interactive) (elscreen-goto 2))
  (defun elscreen-goto-3 () (interactive) (elscreen-goto 3))
  (defun elscreen-goto-4 () (interactive) (elscreen-goto 4))
  (defun elscreen-goto-5 () (interactive) (elscreen-goto 5))
  (defun elscreen-goto-6 () (interactive) (elscreen-goto 6))
  (defun elscreen-goto-7 () (interactive) (elscreen-goto 7))
  (defun elscreen-goto-8 () (interactive) (elscreen-goto 8))
  (defun elscreen-goto-9 () (interactive) (elscreen-goto 9))
  (defun elscreen-goto-0 () (interactive) (elscreen-goto 0))
  (global-unset-key (kbd "M-1")) (global-set-key (kbd "M-1") 'elscreen-goto-0)
  (global-unset-key (kbd "M-2")) (global-set-key (kbd "M-2") 'elscreen-goto-1)
  (global-unset-key (kbd "M-3")) (global-set-key (kbd "M-3") 'elscreen-goto-2)
  (global-unset-key (kbd "M-4")) (global-set-key (kbd "M-4") 'elscreen-goto-3)
  (global-unset-key (kbd "M-5")) (global-set-key (kbd "M-5") 'elscreen-goto-4)
  (global-unset-key (kbd "M-6")) (global-set-key (kbd "M-6") 'elscreen-goto-5)
  (global-unset-key (kbd "M-7")) (global-set-key (kbd "M-7") 'elscreen-goto-6)
  (global-unset-key (kbd "M-8")) (global-set-key (kbd "M-8") 'elscreen-goto-7)
  (global-unset-key (kbd "M-9")) (global-set-key (kbd "M-9") 'elscreen-goto-8)
  (global-unset-key (kbd "M-0")) (global-set-key (kbd "M-0") 'elscreen-goto-9)
  (elscreen-start))
;; http://stackoverflow.com/questions/803812/emacs-reopen-buffers-from-last-session-on-startup
(defvar emacs-configuration-directory
    "~/.emacs.d/"
    "The directory where the emacs configuration files are stored.")
(defvar elscreen-tab-configuration-store-filename
  "~/.emacs.d/.cache/elscreen"
  "The file where the elscreen tab configuration is stored.")
(defun elscreen-store ()
    "Store the elscreen tab configuration."
    (interactive)
    (if (desktop-save "~/.emacs.d/.cache/desktop/")
        (with-temp-file elscreen-tab-configuration-store-filename
            (insert (prin1-to-string (elscreen-get-screen-to-name-alist))))))

(push #'elscreen-store kill-emacs-hook)

(defun elscreen-restore ()
    "Restore the elscreen tab configuration."
    (interactive)
    (if (desktop-read)
        (let ((screens (reverse
                        (read
                         (with-temp-buffer
                          (insert-file-contents elscreen-tab-configuration-store-filename)
                          (buffer-string))))))
            (while screens
                (setq screen (car (car screens)))
                (setq buffers (split-string (cdr (car screens)) ":"))
                (if (eq screen 0)
                    (switch-to-buffer (car buffers))
                    (elscreen-find-and-goto-by-buffer (car buffers) t t))
                (while (cdr buffers)
                    (switch-to-buffer-other-window (car (cdr buffers)))
                    (setq buffers (cdr buffers)))
                (setq screens (cdr screens))))))



(elscreen-restore)
