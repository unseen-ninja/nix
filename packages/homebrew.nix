{ ... }: { homebrew = {

  # Formulaes
  brews = [
    "bitwarden-cli" # the NIX version fails to build, hence this is installed here
    "gh"
    "mas"
    "smudge/smudge/nightlight"
  ];

  # Cask Formulaes
  casks = [
    "arc"
    "nikitabobko/tap/aerospace"
    "dteoh/sqa/slowquitapps"
    "docker"
    "bitwarden"
    "espanso"
    "firefox"
    "forklift"
    "google-chrome"
    "ghostty"
    "librewolf"
    "mediamate"
    "nextcloud"
    "obs"
    "raycast"
    "syncthing"
    "tailscale"
    "teamviewer"
    "zen"
  ];

  # AppStore Apps
  masApps = {
    "Affinity Designer" = 1616831348;
    "Affinity Photo" = 1616822987;
    "Affinity Publisher" = 1606941598;
    "Keymapp" = 6472865291;
    "Microsoft Excel" = 462058435;
    "Microsoft One-Drive" = 823766827;
    "Microsoft Powerpoint" = 462062816;
    "Microsoft Word" = 462054704;
    "Noizio" = 928871589;
    "Wireguard" = 1451685025;
  };

};}
