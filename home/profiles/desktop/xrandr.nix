{ pkgs, ... }:
{
  programs.autorandr.enable = true;

  home.packages = with pkgs; [ arandr ];
}
