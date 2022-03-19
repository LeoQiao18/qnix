{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.nvim-lspconfig;
  config = builtins.readFile ./config.lua;
}
