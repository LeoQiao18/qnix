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
  q = {
    name = "editor",
    q = { "<cmd>q<cr>", "Quit editor" },
    r = { "<cmd>source $MYVIMRC", "Reload config" },
  },
  c = {
    name = "code",
    d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Jump to definition" },
    f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format buffer" },
    h = { "<cmd>lua vim.lsp.buf.hover()<cr>", "Hover information" },
    i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "List implementations" },
    n = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename symbol" },
    r = { "<cmd>lua vim.lsp.buf.references()<cr>", "List references" },
    t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Jump to type definition" },
  },
  e = {
    name = "error",
    a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code action" },
    e = { "<cmd>lua vim.diagnostic.open_float()<cr>", "Show error" },
    h = { "<cmd>lua vim.diagnostic.hide()<cr>", "Hide errors" },
    H = { "<cmd>lua vim.diagnostic.show()<cr>", "Unhide errors" },
    l = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "List errors" },
    n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next error" },
    p = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev error" },
  },
}, { prefix = "<leader>" })

function qnix_toggle_diagnostic_hide()
  local isHiding = false
  if isHiding then
    
  end
end
