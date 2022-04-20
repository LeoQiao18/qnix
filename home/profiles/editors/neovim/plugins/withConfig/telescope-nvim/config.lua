local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup {
  defaults = {
    sorting_strategy = "descending",
    layout_strategy = "vertical",
    file_ignore_patterns = {
      ".git",
    },
  },
}
telescope.load_extension "file_browser"
telescope.load_extension "projects"
