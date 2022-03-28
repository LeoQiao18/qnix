{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.haskell-vim;
  config = builtins.readFile ./config.lua;
}
