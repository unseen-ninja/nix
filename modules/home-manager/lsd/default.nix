{ ... }: {

  home.file = {
    ".config/lsd/config.yaml".source = ./config.yaml;
    ".config/lsd/colors.yaml".source = ./colors.yaml;
  };

}
