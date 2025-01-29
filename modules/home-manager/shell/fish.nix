{ ... }: { programs.fish = {

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

  ".config/fish/alias/filesystem.fish".text = ''
    function mkcd
      mkdir -p $argv && cd $argv
    end

    function rr
      gum confirm && rm -fr $argv || echo "Not removed"
    end
  '';

  ".config/fish/alias/tmux.fish".text = ''
    alias tm tmux

    function tma
      set SESSION $(tmux list-sessions -F \#S | gum filter --placeholder "Pick session...")
      tmux switch-client -t $SESSION || tmux attach -t $SESSION
    end

    function tmn
      set SESSION $(gum input --placeholder "Session name")
      tmux new -s $SESSION
    end

    function tmk
      set SESSION $(tmux list-sessions -F \#S | gum filter --placeholder "Pick session...")
      tmux kill-session -t $SESSION
    end
  '';

};}
