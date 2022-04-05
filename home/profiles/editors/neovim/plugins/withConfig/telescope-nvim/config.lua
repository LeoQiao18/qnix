local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup {
  defaults = {
    sorting_strategy = "descending",
    layout_strategy = "vertical",
    file_ignore_patterns = {
      ".git",
      "node_modules",
      "__pycache__",
      "%.o",
      "%.a",
      "%.out",
      "%.class",
    },
  },
}
telescope.load_extension "file_browser"
telescope.load_extension "projects"
