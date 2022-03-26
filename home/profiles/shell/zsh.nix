{ pkgs, config, lib, ... }:
with lib;
{
  home.packages = with pkgs; [
    any-nix-shell
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    shellAliases = {
      
    } // mkIf config.programs.tmux.enable {
      mux = "tmuxinator";
    };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
    initExtra = ''
      eval "$(direnv hook zsh)"
      any-nix-shell zsh --info-right | source /dev/stdin
    '';
  };
}
