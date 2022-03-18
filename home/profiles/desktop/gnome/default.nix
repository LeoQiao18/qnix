{ pkgs, lib, ... }:
let
  dconfSettings = import ./dconf.nix { inherit lib; };
  backgroundSettings = {
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/lqiao/.background-image";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };
    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/lqiao/.background-image";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };
  };
  dconfSettings' = {
    dconf.settings = dconfSettings.dconf.settings // backgroundSettings;
  };
in
{
  inherit (dconfSettings') dconf;

  home.packages = with pkgs; [
    # dconf gui
    gnome.gnome-tweaks
    gnome.dconf-editor
    dconf2nix

    # extensions
    orchis-theme
    tela-icon-theme
    gnomeExtensions.appindicator
  ];
}
