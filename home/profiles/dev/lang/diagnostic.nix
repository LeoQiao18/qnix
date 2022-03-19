
{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nodePackages.diagnostic-languageserver
  ];
}
