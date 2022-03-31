{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.nvim-autopairs;
  config = builtins.readFile ./config.lua;
}
