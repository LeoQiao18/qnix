local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup {
  defaults = {
    sorting_strategy = "descending",
    layout_strategy = "vertical",
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      }
    },
  },
}
telescope.load_extension "file_browser"
telescope.load_extension "projects"
