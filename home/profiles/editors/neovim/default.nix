{ config, pkgs, lib, ... }:

let
  myPlugins = import ./plugins { inherit pkgs lib; };
  # cocSettings = builtins.toJSON (import ./coc-settings.nix);

  vimConfig = builtins.readFile ./base.vim;
  luaConfig = builtins.readFile ./base.lua;

  keysConfig = builtins.readFile ./keys.lua;
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
      ${keysConfig}
      EOF
    '';
  };

  # xdg.configFile = {
  #   "nvim/coc-settings.json".text = cocSettings;
  # };
}
