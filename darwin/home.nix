{ config, pkgs, user, ... }: {

  # Enable system-wide
  catppuccin = {
    enable = true;
    flavor = "frappe";
  };

  home = {
    stateVersion = "24.11";

    username = "${user}";
    homeDirectory = "/Users/${user}";
    sessionPath = [
      "$HOME/.local/bin"
    ];

    # Home Packages
    packages = with pkgs; [
      #
    ];
  };

  imports = [
    ../modules/home-manager/aerospace.nix
    ../modules/home-manager/git.nix
    ../modules/home-manager/kitty.nix
    ../modules/home-manager/shell # imports all shell stuff
    ../modules/home-manager/starship.nix
    ../modules/home-manager/tmux.nix
    ../modules/home-manager/vs-code.nix
  ];

  programs.home-manager.enable = true;

}
