{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.trouble-nvim;
  config = builtins.readFile ./config.lua;
}
