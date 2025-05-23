{ pkgs, ... }: {

  # Allow proprietary software
  nixpkgs.config.allowUnfree = true;

  # System Packages
  environment.systemPackages = with pkgs; [
    blockbench
    catppuccin-whiskers
    deno
    ffmpeg-headless
    fish
    git
    gnugrep
    gnupg
    gum
    kitty
    lsd
    mcrcon
    mkalias
    neovim
    obsidian
    tmux
    pfetch-rs
    pnpm
    prismlauncher
    spicetify-cli
    spotify
    starship
    telegram-desktop
    unixtools.ping
    vesktop
    vscode
    wget
    yt-dlp-light
  ];

  # Fonts
  fonts.packages = with pkgs; [
    fira-code
    jost
    league-gothic
    victor-mono
  ];

}
