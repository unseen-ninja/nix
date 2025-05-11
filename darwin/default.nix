{ self, lib, inputs, nixpkgs, nix-darwin, nix-homebrew, home-manager, catppuccin, user, ... }:


let
  # Darwin Architecture
  # System Options: [ "aarch64-darwin" "x86_64-darwin" ]
  system = "aarch64-darwin";

  # Hostname
  hostname = "Rivershen";

in
{
 "${hostname}" = nix-darwin.lib.darwinSystem {
    inherit system;
    specialArgs = { inherit self inputs user hostname; };
    modules = [
      ./configuration.nix
      ./homebrew.nix

      # Homebrew
      nix-homebrew.darwinModules.nix-homebrew {
        nix-homebrew = {
          enable = true;
          enableRosetta = true;
          user = "${user}";
        };
      }
      # /Homebrew

      # Home Manager
      home-manager.darwinModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = { inherit user; };
        home-manager.users.${user} = {
          imports = [
            (import ./home.nix)
            catppuccin.homeModules.catppuccin
          ];
        };
      }
      # /Home Manager
    ];
 };
}
