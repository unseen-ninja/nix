{ ... }: {
  # Homebrew Config
  homebrew = {
    enable = true;
    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };

  # Package List
  imports = [
    ../packages/homebrew.nix
  ];
}