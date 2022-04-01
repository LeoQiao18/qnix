{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.nvim-ts-autotag;
  config = builtins.readFile ./config.lua;
}
