{
  description = "NixOS configuration";

  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
      "https://devenv.cachix.org"
    ];

    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw="
    ];
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland/v0.52.2";

    hyprcursor = {
      url = "github:ndom91/rose-pine-hyprcursor";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        hyprlang.follows = "hyprland/hyprlang";
      };
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake/twilight-1745550111";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    catppuccin = {
      url = "github:catppuccin/nix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      catppuccin,
      ...
    }@inputs:
    {
      nixosConfigurations = {
        partridge =
          let
            username = "partridge";
            specialArgs = { inherit inputs username; };
          in
          nixpkgs.lib.nixosSystem {
            inherit specialArgs;

            modules = [
              ./host
              ./host/nvidia.nix
              ./modules/hyprland
              catppuccin.nixosModules.catppuccin

              home-manager.nixosModules.home-manager
              {
                home-manager = {
                  useGlobalPkgs = true;
                  useUserPackages = true;
                  backupFileExtension = "backup";
                  extraSpecialArgs = inputs // specialArgs;
                  users.${username} = import ./users/${username}/home.nix;
                };
              }
            ];
          };

        duc-na =
          let
            username = "duc-na";
            specialArgs = { inherit inputs username; };
          in
          nixpkgs.lib.nixosSystem {
            inherit specialArgs;

            modules = [
              ./host
              ./modules/hyprland
              catppuccin.nixosModules.catppuccin

              home-manager.nixosModules.home-manager
              {
                home-manager = {
                  useGlobalPkgs = true;
                  useUserPackages = true;
                  backupFileExtension = "backup";
                  extraSpecialArgs = inputs // specialArgs;
                  users.${username} = import ./users/${username}/home.nix;
                };
              }
            ];
          };
      };
    };
}
