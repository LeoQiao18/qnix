{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.nvim-colorizer-lua;
  config = builtins.readFile ./config.lua;
}
