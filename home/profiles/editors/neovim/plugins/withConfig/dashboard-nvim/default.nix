{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.dashboard-nvim;
  config = builtins.readFile ./config.lua;
}
