{ config, pkgs, ... }:

let
  customPlugins = pkgs.callPackage ./custom-plugins.nix {
    inherit (pkgs.vimUtils) buildVimPlugin;
  };
  plugins = pkgs.vimPlugins // customPlugins;
  myPlugins = with plugins; [
      vim-airline
      vim-unimpaired
      vim-vinegar
      vim-easymotion
      vim-tmux-navigator
      vim-surround
      nerdcommenter
      gruvbox
      fzf-vim
      fzf-hoogle
      coc-nvim
      coc-pyright
      coc-highlight
      coc-pairs
      coc-spell-checker
      vim-nix
      vim-tmux
      vim-css-color
      vim-which-key
      vim-gtfo
      vim-ripgrep
      fzf-hoogle
      dracula-vim
    ];
  cocSettings = builtins.toJSON (import ./coc-settings.nix);

  baseConfig = builtins.readFile ./base.vim;
  pluginsConfig = builtins.readFile ./plugins.vim;
  cocConfig = builtins.readFile ./coc.vim;
  keysConfig = builtins.readFile ./keys.vim;
  vimConfig = baseConfig + pluginsConfig + cocConfig + keysConfig;
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
    extraConfig = vimConfig;
  };

  xdg.configFile = {
    "nvim/coc-settings.json".text = cocSettings;
  };
}
