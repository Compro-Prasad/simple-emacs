(defun simple-emacs/basename (file)
    "Returns just the file name of the given FILE."
    (file-name-nondirectory (directory-file-name file)))

;; Open existing file using C-o
(defun simple-emacs/open-existing-file ()
  "Open an existing file from file chooser."
  (interactive)
  (if (fboundp 'x-file-dialog)
      (find-file (x-file-dialog "Open file" default-directory ""))
    (counsel-find-file)))

(defvar simple-emacs/new-file-count 0
  "Count of new files.")

(defun simple-emacs/create-new-file ()
  "Create a new unsaved buffer."
  (interactive)
  (switch-to-buffer
   (concat "untitled-" (format "%d" simple-emacs/new-file-count)))
  (setq simple-emacs/new-file-count (1+ simple-emacs/new-file-count)))

(defun simple-emacs/delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument, do this that many times.
This command does not push text to `kill-ring'."
  (interactive "p")
  (delete-region
   (point)
   (progn
     (forward-word arg)
     (point))))

(defun simple-emacs/backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument, do this that many times.
This command does not push text to `kill-ring'."
  (interactive "p")
  (simple-emacs/delete-word (- arg)))

(defun simple-emacs/delete-line ()
  "Delete text from current position to end of line char.
This command does not push text to `kill-ring'."
  (interactive)
  (delete-region
   (point)
   (progn (end-of-line 1) (point)))
  (delete-char 1))

(defun simple-emacs/delete-line-backward ()
  "Delete text between the beginning of the line to the cursor position.
This command does not push text to `kill-ring'."
  (interactive)
  (let (p1 p2)
    (setq p1 (point))
    (beginning-of-line 1)
    (setq p2 (point))
    (delete-region p1 p2)))

(defun simple-emacs/find-symbol ()
  "Check for git project and then search."
  (interactive)
  (if (vc-find-root default-directory ".git")
      (counsel-git-grep)
    (counsel-ag)))

(defun simple-emacs/toggle-comment ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)))

(defun simple-emacs/duplicate-line ()
  "Duplicates current line."
  (interactive)
  (save-excursion
    (kill-ring-save
     (progn (beginning-of-line) (point))
     (progn (end-of-line) (point)))
    (newline)
    (yank)
    (setq kill-ring (cdr kill-ring)))
  (next-line))

(defun simple-emacs/select-current-word ()
  "Select the word under cursor.
“word” here is considered any alphanumeric sequence with “_” or “-”."
  (interactive)
  (let (pt)
    (skip-chars-backward "-_A-Za-z0-9")
    (setq pt (point))
    (skip-chars-forward "-_A-Za-z0-9")
    (set-mark pt)))

(defun simple-emacs/increment-number (arg)
  (interactive "p")
  (let* ((tap (thing-at-point 'sexp 'no-properties))
         (num (string-to-number tap)))
    (when (numberp num)
      (simple-emacs/select-current-word)
      (setq num (if (< arg 0) (1- num) (1+ num)))
      (call-interactively 'delete-region)
      (insert (number-to-string num)))))

(defun simple-emacs/decrement-number ()
  (interactive)
  (simple-emacs/increment-number -1))
