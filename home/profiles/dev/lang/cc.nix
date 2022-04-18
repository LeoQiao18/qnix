{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gcc
    gdb
    gnumake
    cmake
    ccls
    bear
  ];
}
