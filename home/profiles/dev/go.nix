{ pkgs, ... }:
{
  programs.go = {
    enable = true;
    packages = {};
    goPath = "go";
  };
}
