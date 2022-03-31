require('nvim-tree').setup {
  -- closes neovim automatically when the tree is the last **WINDOW** in the view
  auto_close = true,
  hijack_netrw = false,
  sort_by = "name",
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
  update_focused_file = {
    enable = true,
  },
}
