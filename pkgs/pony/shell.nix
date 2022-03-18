{ pkgs ? import <nixpkgs> {} }:
let
  pythonWithPkgs = pkgs.python3.withPackages (p: with p; [
    setuptools
    click
  ]);
in
pythonWithPkgs.env
