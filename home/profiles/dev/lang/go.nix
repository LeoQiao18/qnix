{ pkgs, ... }:
{
  programs.go = {
    enable = true;
    packages = { };
    goPath = "go";
  };

  home.packages = with pkgs; [
    gopls
  ];
}
