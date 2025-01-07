{
  description = "Lemon's Nix (Darwin) Config";

  inputs = {

    # Nix Packages
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    # Nix Darwin
    nix-darwin = {
      url = "github:LnL7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Homebrew
    nix-homebrew.url = "github:zhaofengli-wip/nix-homebrew";

    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Catppuccin
    catppuccin.url = "github:catppuccin/nix";

  };

  outputs = { self, nixpkgs, nix-darwin, nix-homebrew, home-manager, catppuccin, ... }@inputs:
  let
    user = "ag";
    location = "$HOME/.config/nix";
  in
  {
    darwinConfigurations = (
      import ./darwin {
        inherit (nixpkgs) lib;
        inherit self inputs nixpkgs nix-darwin nix-homebrew home-manager catppuccin user location;
      }
    );
  };

}
