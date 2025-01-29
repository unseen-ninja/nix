{ ... }: {

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting

      for file in $HOME/.config/fish/alias/*
        source $file
      end

      setenv LS_COLORS 'di=1;32:fi=0:ln=33:ex=1;90;45'
    '';

  };


  home.file = {
    ".config/fish/alias/filesystem.fish".source = ./filesystem.fish;
    ".config/fish/alias/tmux.fish".source = ./tmux.fish;
  };

}
