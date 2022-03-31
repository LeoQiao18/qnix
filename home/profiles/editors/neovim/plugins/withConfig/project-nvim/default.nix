{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.project-nvim;
  config = builtins.readFile ./config.lua;
}
