{ pkgs, ... }:
{
  programs = {
    fzf.enable = true;
    htop.enable = true;
    jq.enable = true;
    ssh.enable = true;
  };

  home.packages = with pkgs; [
    coreutils
    fd
    gawk
    killall
    psmisc
    ripgrep
    tldr
    tree
    xsel
  ];
}
