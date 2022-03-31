{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.indent-blankline-nvim;
  config = builtins.readFile ./config.lua;
}
