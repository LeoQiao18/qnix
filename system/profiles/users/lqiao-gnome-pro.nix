{ hmUsers, ... }:
{
  home-manager.users = {
    lqiao = hmUsers.gnome-pro;
  };

  users.users.lqiao = {
    initialPassword = "lqiao";
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "networkmanager" "video" ];
  };
}
