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
