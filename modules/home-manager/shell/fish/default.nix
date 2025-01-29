{ ... }: {

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting

      for file in $HOME/.config/fish/alias/*
        source $file
      end

      source $HOME/.config/fish/alias/environment.fish
    '';

  };


  home.file = {
    ".config/fish/alias/environment.fish".source = ./environment.fish;
    ".config/fish/alias/filesystem.fish".source = ./filesystem.fish;
    ".config/fish/alias/tmux.fish".source = ./tmux.fish;
  };

}
