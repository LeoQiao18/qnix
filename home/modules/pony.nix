{ pkgs, config, lib, ... }:
with lib;
let
  cfg = config.programs.pony;
in
{
  options.programs.pony = {
    enable = mkEnableOption "qnix system manipulation";
  };

  config = mkIf cfg.enable {
    home.packages = with pkgs; [
      pony
    ];
  };
}
