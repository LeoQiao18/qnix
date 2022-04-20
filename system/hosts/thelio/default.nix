{ suites, inputs, ... }:
{
  ### root password is empty by default ###
  imports = [
    ./hardware-configuration.nix
    inputs.nixos-hardware.nixosModules.system76
  ]
  ++ suites.core
  ++ suites.gnome
  ++ suites.lqiao-pro;

  environment.sessionVariables = {
    "QNIX_HOST" = "thelio";
  };
}
