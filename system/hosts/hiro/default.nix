{ suites, inputs, ... }:
{
  ### root password is empty by default ###
  imports = [
    ./hardware-configuration.nix
    inputs.nixos-hardware.nixosModules.dell-xps-13-9310
  ] ++ suites.laptop;

  environment.sessionVariables = {
    "QNIX_HOST" = "hiro";
  };
}
