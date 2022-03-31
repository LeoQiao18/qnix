{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.cmp-buffer;
  config = builtins.readFile ./config.lua;
}
