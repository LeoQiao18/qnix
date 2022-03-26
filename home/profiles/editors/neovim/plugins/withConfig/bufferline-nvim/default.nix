{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.bufferline-nvim;
  config = builtins.readFile ./config.lua;
}
