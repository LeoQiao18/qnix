{ pkgs, ... }:
{
  programs.home-manager.enable = true;

  programs.pony.enable = true;

  xdg.enable = true;

  systemd.user.startServices = "sd-switch";

  home.sessionVariables = {
    EDITOR = "vim";
  };

  programs = {
    fzf.enable = true;
    htop.enable = true;
    jq.enable = true;
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
    ssh.enable = true;
  };

  home.packages = with pkgs; [
    coreutils
    fd
    gawk
    killall
    ripgrep
    tldr
    tree
    xsel
  ];
}
