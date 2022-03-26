{ pkgs, ... }:
{
  services = {
    xserver = {
      enable = true;
      layout = "us";
      displayManager.gdm.enable = true;
      displayManager.gdm.wayland = false;
      desktopManager.gnome.enable = true;
    };

    dbus.packages = [ pkgs.dconf ];
    udev.packages = [ pkgs.gnome3.gnome-settings-daemon ];
  };

  services.gnome.gnome-remote-desktop.enable = false;

  environment.systemPackages = with pkgs; [
    gnome3.adwaita-icon-theme
  ];
}
