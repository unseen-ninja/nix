{ pkgs, ... }: { programs.tmux = {

  enable = true;
  shell = "${pkgs.fish}/bin/fish";

  # plugins = with pkgs; [
  #   {
  #     plugin = tmuxPlugins.catppuccin;
  #     extraConfig = ''
  #       set -g @catppuccin_flavour 'frappe'
  #       set -g @catppuccin_window_status_enable "yes"
  #       set -g @catppuccin_pane_active_border_style "fg=blue"
  #     '';
  #   }
  # ];

  extraConfig = ''
    # visuals
    # ———————
    set -g status-position bottom
    set -g base-index 1
    setw -g pane-base-index 1


    # have sane keybinds
    # ——————————————————

    # reload config
    bind r source-file ~/.config/tmux/tmux.conf

    # remap prefix from 'C-b' to 'C-s'
    unbind C-b
    set-option -g prefix C-s
    bind-key C-s send-prefix

    # sane split commands
    bind x split-window -h
    bind y split-window -v
    bind q killp
    unbind '"'
    unbind %

    # control + hjkl to focus pane
    bind -n C-h select-pane -L
    bind -n C-l select-pane -R
    bind -n C-k select-pane -U
    bind -n C-j select-pane -D

    # leader + hjkl to resize pane
    bind h resize-pane -L 5
    bind l resize-pane -R 5
    bind k resize-pane -U 2
    bind j resize-pane -D 2
  '';

};}
