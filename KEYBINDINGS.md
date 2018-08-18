# Keybindings in Simple Emacs

## File operations
| Keybinding | Command                         | Comment                                      |
|------------|---------------------------------|----------------------------------------------|
| C-s        | save-buffer                     | Saves the current buffer to a file           |
| C-o        | simple-emacs/open-existing-file | Opens/Creates a file from/in the file system |

## Buffer operations
| Keybinding | Command                      | Comment                    |
|------------|------------------------------|----------------------------|
| C-n        | simple-emacs/create-new-file | Creates a new empty buffer |
| C-w        | kill-buffer                  | Kills a buffer             |
| C-f4       | kill-current-buffer          | Kills current buffer       |

## In-buffer operations
| Keybinding  | Command                           | Comment                                           |
|-------------|-----------------------------------|---------------------------------------------------|
| C-/         | simple-emacs/toggle-comment       | Toggle comment on the current line                |
| C-M-d       | simple-emacs/duplicate-line       | Duplicates the current line                       |
| M-+         | simple-emacs/increment-number     | Increments number under point                     |
| M-=         | simple-emacs/decrement-number     | Decrements number under point                     |
| M-d         | simple-emacs/delete-word          | Deletes word under point                          |
| M-backspace | simple-emacs/delete-word-backward | Deletes (part of) word before point               |
| M-delete    | simple-emacs/delete-word-forward  | Deletes (part of) word after point                |
| C-k         | simple-emacs/delete-line-forward  | Delete line from point till the end of line       |
| C-S-k       | simple-emacs/delete-line-backward | Delete line from point till the beginning of line |
| C-y         | quoted-insert                     | Insert any character                              |
| C-d         | mc/mark-next-like-this            | Create a cursor at the next occurance             |
| C-S-d       | mc/mark-previous-like-this        | Create a cursor at the previous occurance         |
| C-g         | mc/keyboard-quit                  | Removes all cursors                               |

## Project operations
| Keybinding | Command                            | Comment                                      |
|------------|------------------------------------|----------------------------------------------|
| C-r        | simple-emacs/find-symbol           | Search in a project                          |
| M-g M-g    | goto-line                          | Goto a line number in the current buffer     |
| C-p p      | projectile-switch-project          | Switch to a known project                    |
| C-p a      | projectile-find-other-file         | Switch between related files(eg: .h and .cc) |
| C-p b      | projectile-switch-to-buffer        | Switch to another buffer in current project  |
| C-p e      | projectile-recentf                 | Open a recent file from the project          |
| C-p f      | projectile-find-file               | Open a file from the project                 |
| C-p k      | projectile-kill-buffers            | Kill all buffers in current project          |
| C-p r      | projectile-replace                 | Replace ocurrances in a project              |
| C-p &      | projectile-run-async-shell-command | Run shell command from project root          |
| C-p c      | projectile-compile-project         | Run compile command for from project root    |
