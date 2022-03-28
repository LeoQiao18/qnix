{ pkgs, lib, ... }:
let
  withConfig = builtins.attrValues (lib.our.rakeLeaves ./withConfig);
  withConfig' = builtins.map (p: import p { inherit pkgs; }) withConfig;
in
withConfig' ++ (
  with pkgs.vimPlugins; [
    # coc-nvim
    # coc-highlight
    # coc-pairs
    # coc-pyright
    # coc-spell-checker
    tokyonight-nvim
    gruvbox
    # vim-css-color
    # vim-nix
    # vim-ripgrep
    # vim-tmux-navigator
    # vim-tmux
    vim-vinegar
    nvim-web-devicons
    plenary-nvim
    cmp-nvim-lsp
    cmp_luasnip
    luasnip
    telescope-nvim
    cmp-path
  ]
)
