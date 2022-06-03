{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.Coqtail;
  config = builtins.readFile ./config.lua;
}
