{ pkgs, ... }:
{
  home.packages = with pkgs.haskellPackages; [
    brittany
    cabal-install
    cabal2nix
    ghc
    haskell-language-server
    hlint
    hoogle
    stack
    nix-tree
  ];
}
