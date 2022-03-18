{ hmUsers, ... }:
{
  home-manager.users = { inherit (hmUsers) lqiao; };

  users.users.lqiao = {
    initialPassword = "lqiao";
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" "networkmanager" "video"];
  };
}
