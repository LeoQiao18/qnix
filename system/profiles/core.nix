{ self, config, lib, pkgs, ... }:
let
in
{
  # Use the systemd-boot EFI boot loader.
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  # allow changing password
  users.mutableUsers = true;

  environment.systemPackages = with pkgs; [
    binutils
    coreutils
    usbutils
    gnumake
    lsof
    curl
    firefox
    git
    manix
    vim
    wget
  ];

  fonts.fonts = with pkgs; [
    (nerdfonts.override {
      fonts = [
        "JetBrainsMono"
        "FiraCode"
      ];
    })
  ];

  # use zsh
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  nix = {
    # Automate garbage collection
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };

    # enable nix flake + protect nix-shell against GC
    package = pkgs.nixUnstable;
    extraOptions = ''
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '';

    # Required by Cachix to be used as non-root user
    settings = {
      auto-optimise-store = true;
      trusted-users = [ "root" "@wheel" ];
    };

  };
}
