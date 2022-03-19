{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.nvim-treesitter;
  config = builtins.readFile ./config.lua;
}
