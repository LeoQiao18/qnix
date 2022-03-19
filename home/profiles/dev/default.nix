{ lib, ... }:
let
  lang = builtins.attrValues (lib.our.rakeLeaves ./lang);
in
{
  imports = lang;
}
