{ self, config, pkgs, user, hostname, ... }: {

  # Standards
  programs.fish.enable = true;

  environment.shells = with pkgs; [
    fish
    zsh
  ];

  users.knownUsers = [ "${user}" ];
  users.users."${user}" = {
    name = "${user}";
    uid = 501;
    home = "/Users/${user}";
    shell = pkgs.fish;
  };

  networking = {
    computerName = "${hostname}";
    hostName = "${hostname}";
  };

  time.timeZone = "Europe/Berlin";

  imports = [
    ../modules/darwin/defaults.nix
    ../modules/darwin/dock.nix
    ../packages/system.nix
  ];

  # Use 'mkalias' instead of symlinks to link installed software
  # to the /Applications folder in order to make them discoverable
  # via Spotlight
  system.activationScripts.applications.text = let
    env = pkgs.buildEnv {
      name = "system-applications";
      paths = config.environment.systemPackages;
      pathsToLink = "/Applications";
    };
  in
    pkgs.lib.mkForce ''
      rm -fr /Applications/Nix\ Apps
      mkdir -p /Applications/Nix\ Apps
      find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
      while read -r src; do
        app_name=$(basename "$src")
        ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
      done
    '';
  # /mkalias

  system = {
    configurationRevision = self.rev or self.dirtyRev or null;
    stateVersion = 5;
  };


  nix = {
    package = pkgs.nix;
    optimise.automatic = true;

    settings = {
      trusted-users = [
        "root"
        "${user}"
      ];
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

}