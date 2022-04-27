{ pkgs, ... }:
{
  services.printing.enable = true;
  services.printing.drivers = with pkgs; [
    gutenprint
    gutenprintBin
    hplip
    hplipWithPlugin
  ];
}
