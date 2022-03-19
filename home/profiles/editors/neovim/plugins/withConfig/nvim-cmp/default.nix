{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.nvim-cmp;
  config = builtins.readFile ./config.lua;
}
