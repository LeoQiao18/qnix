{ pkgs, ... }:
{
  type = "lua";
  plugin = pkgs.vimPlugins.todo-comments-nvim;
  config = builtins.readFile ./config.lua;
}
