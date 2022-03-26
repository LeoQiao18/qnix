local wk = require("which-key")

wk.setup ({})

wk.register({
  f = {
    name = "file",
    f = { "<cmd>Telescope find_files<cr>", "Find file" },
    r = { "<cmd>Telescope oldfiles<cr>", "Find recent" },
    t = { "<cmd>NvimTreeToggle<cr>", "Toggle tree" },
    s = { "<cmd>w<cr>", "Save file" },
  },
  w = {
    name = "window",
    h = { "<cmd>wincmd h<cr>", "Go left" },
    j = { "<cmd>wincmd j<cr>", "Go down" },
    k = { "<cmd>wincmd k<cr>", "Go up" },
    l = { "<cmd>wincmd l<cr>", "Go right" },
    H = { "<cmd>wincmd H<cr>", "Move left" },
    J = { "<cmd>wincmd J<cr>", "Move down" },
    K = { "<cmd>wincmd K<cr>", "Move up" },
    L = { "<cmd>wincmd L<cr>", "Move right" },
    s = { "<cmd>sp<cr>", "Split horizontal" },
    v = { "<cmd>vs<cr>", "Split vertical" },
    q = { "<cmd>wincmd q<cr>", "Quit window" },
    ["+"] = { "<cmd>wincmd +<cr>", "Increase height" },
    ["-"] = { "<cmd>wincmd -<cr>", "Decrease height" },
    [">"] = { "<cmd>wincmd <<cr>", "Increase width" },
    ["<"] = { "<cmd>wincmd ><cr>", "Decrease width" },
    ["|"] = { "<cmd>wincmd |<cr>", "Max width" },
    ["="] = { "<cmd>wincmd =<cr>", "Equal height and width" },
  },
  b = {
    name = "buffer",
    p = { "<cmd>bp<cr>", "Previous buffer" },
    n = { "<cmd>bn<cr>", "Next buffer" },
  },
}, { prefix = "<leader>" })
