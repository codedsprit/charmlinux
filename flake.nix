{
  description = "codedsprit's nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin.url = "github:catppuccin/nix";
  };

  outputs =
    {
      nixpkgs,
      home-manager,
      catppuccin,
      ...
    }:
    {
      homeConfigurations.pop = home-manager.lib.homeManagerConfiguration {
       pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };
        modules = [
          ./modules
          catppuccin.homeManagerModules.catppuccin
          {
            home.username = "sprit";
            home.stateVersion = "24.05";
            home.homeDirectory = "/home/sprit";
          }
        ];
      };
    };
}
