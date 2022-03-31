{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.gitsigns-nvim;
  config = builtins.readFile ./config.lua;
}
