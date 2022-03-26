{ pkgs, ... }:
{
  type = "viml";
  plugin = pkgs.vimPlugins.dashboard-nvim;
  config = builtins.readFile ./config.vim;
}
