{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.lspsaga-nvim;
  config = builtins.readFile ./config.lua;
}
