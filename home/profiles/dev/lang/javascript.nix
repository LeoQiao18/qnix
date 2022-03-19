{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nodejs
    nodePackages.npm
    nodePackages.yarn
    nodePackages.eslint
    nodePackages.prettier
    nodePackages.typescript
    nodePackages.typescript-language-server
  ];
}
