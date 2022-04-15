{ pkgs, ... }:
{
  programs.home-manager.enable = true;

  programs.pony.enable = true;

  xdg.enable = true;

  systemd.user.startServices = "sd-switch";

  home.sessionVariables = {
    EDITOR = "vim";
  };
}
