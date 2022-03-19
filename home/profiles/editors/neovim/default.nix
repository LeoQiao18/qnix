{ config, pkgs, lib, ... }:

let
  myPlugins = import ./plugins { inherit pkgs lib; };
  # cocSettings = builtins.toJSON (import ./coc-settings.nix);

  baseConfig = builtins.readFile ./base.vim;
  keysConfig = builtins.readFile ./keys.vim;
  cocConfig = builtins.readFile ./coc.vim;
  pluginsConfig = builtins.readFile ./plugins.vim;
  vimConfig = baseConfig + keysConfig + cocConfig + pluginsConfig;
  luaConfig = builtins.readFile ./base.lua;
in
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = true;
    withPython3 = true;
    plugins = myPlugins;
    extraConfig = ''
      ${vimConfig}
      lua << EOF
      ${luaConfig}
      EOF
    '';
  };

  # xdg.configFile = {
  #   "nvim/coc-settings.json".text = cocSettings;
  # };
}
