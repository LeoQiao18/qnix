{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    any-nix-shell
  ];
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    shellAliases = {};
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
