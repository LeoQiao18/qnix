{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.zen-mode-nvim;
  config = builtins.readFile ./config.lua;
}
