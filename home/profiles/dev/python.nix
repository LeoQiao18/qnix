{ pkgs, ... }:
{
  home.packages = with pkgs; [
    python3
    python3Packages.pip
    python3Packages.black
    python3Packages.pylint
    python3Packages.setuptools
  ];
}
