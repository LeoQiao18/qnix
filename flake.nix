{
  description = "A highly structured configuration database.";

  inputs =
    {
      nixos.url = "github:nixos/nixpkgs/nixos-unstable";

      home-manager.url = "github:nix-community/home-manager";
      home-manager.inputs.nixpkgs.follows = "nixos";

      digga.url = "github:divnix/digga";
      digga.inputs.nixpkgs.follows = "nixos";
      digga.inputs.nixlib.follows = "nixos";
      digga.inputs.home-manager.follows = "home-manager";

      nixos-hardware.url = "github:nixos/nixos-hardware";
    };

  outputs =
    { self
    , digga
    , nixos
    , home-manager
    , ...
    } @ inputs:
    digga.lib.mkFlake
      {
        inherit self inputs;

        channelsConfig = {
          allowUnfree = true;
        };

        channels = {
          nixos = {
            imports = [ (digga.lib.importOverlays ./overlays) ];
            overlays = [ ./pkgs ];
          };
        };

        lib = import ./lib { lib = digga.lib // nixos.lib; };

        sharedOverlays = [
          (final: prev: {
            __dontExport = true;
            lib = prev.lib.extend (lfinal: lprev: {
              our = self.lib;
            });
          })
        ];

        nixos = {
          hostDefaults = {
            system = "x86_64-linux";
            channelName = "nixos";
            imports = [ (digga.lib.importExportableModules ./system/modules) ];
            modules = [
              home-manager.nixosModules.home-manager
            ];
          };

          importables = rec {
            profiles = digga.lib.rakeLeaves ./system/profiles;
            suites = import ./system/suites profiles;
          };

          imports = [ (digga.lib.importHosts ./system/hosts) ];
        };

        home = {
          imports = [ (digga.lib.importExportableModules ./home/modules) ];

          modules = [ ];

          importables = rec {
            profiles = digga.lib.rakeLeaves ./home/profiles;
            suites = import ./home/suites profiles;
          };

          users = digga.lib.rakeLeaves ./home/users;
        };

        homeConfigurations = digga.lib.mkHomeConfigurations self.nixosConfigurations;
      };
}
