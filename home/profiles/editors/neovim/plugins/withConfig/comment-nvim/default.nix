{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.comment-nvim;
  config = builtins.readFile ./config.lua;
}
