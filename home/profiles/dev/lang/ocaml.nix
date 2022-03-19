{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ocamlPackages.ocaml
    ocamlPackages.ocaml-lsp
    ocamlformat
    opam
  ];
}
