{ pkgs, ... }:
{
  home.packages = with pkgs; [
    slack
    discord
    zoom-us
  ];
}
