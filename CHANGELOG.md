# v0.2.0

- Keybinding list is now available in `KEYBINDINGS.md`

- `C-backspace` and `C-delete` delete words separated by punctuations

- `M-d` deletes the word under point separated by space

- Increment and decrement numbers using `M-+` and `M-=` respectively

- `C-M-d` duplicates current line

- Disabled toolbar by default

- `C-/` comments or uncomments line or region

- `C-x u` opens the undo tree

- Added `go-mode` and `aggressive-indent`

- `aggressive-indent-mode` is on `C-t i`

- Font colors of modeline, region and hl-line colors are changed

- Enabled fuzzy matching in ivy

- `C-S-l` makes new cursors on each line in a region

- Remove `eshell-did-yu-mean` and `eshell-fringe-status`

- Replaced `helm` with `ivy`

- `C-t` is the new toggling prefix


# v0.1.1
- Removed shortcuts: `C-i` for `TAB`, `C-j` for `\n` and `C-[` for `ESC`

- Press `C-y` to insert any character in the buffer. This might be useful when
  searching for multiline strings in a buffer with special characters. Some
  common characters are:
  - `C-i` for `TAB`
  - `C-j` for `\n`
  - `C-m` for `\r`

- `C-S-t T` toggles tab visibility.

- Better scrolling with mouse

- Quiting Emacs doesn't ask you to kill http server

- Moved `helm` completion into current frame

- Removed tabbar *on hover* highlight

- Magit buffers of a project are deleted when quiting from status buffer

- The sidebar interaction is much more simpler now.

- Added `.mc-lists.el` for better user interaction with multiple cursors

- Turned off annoying bells

- Opening any file will always open the actual file by following all
  symlinks. Recursive symlinks behaviour is currently undefined.

- Upgraded `anaconda-mode` to fix certain jump to definition issues

- Updated Treemacs(sidebar) for fringe highlight

- Added `rjsx-mode` and `typescript-mode`

- Added Emacs Emacs IPython Notebook

- Replaced `test-c` with `quickrun` to run any file with plentiful language
  support. Added a green triangle button on toolbar to execute current buffer
  using `quickrun`.

- Lots of bug fixes and optimizations.
