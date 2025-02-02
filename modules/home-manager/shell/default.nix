{ pkgs, ... }: {

  home.shellAliases = {
    # System
    upgrade = "nix flake update --flake ~/.config/nix";
    rebuild = "darwin-rebuild switch --flake ~/.config/nix; exec $SHELL -l";
    cleanup = "nix-collect-garbage -d --delete-older-than 7d";
    reload = "exec $SHELL -l";

    # General
    c = "clear";
    ca = "clear; cd ~";
    hg = "history | grep";
    ping = "ping -c 5";
    speedtest = "wget -O /dev/null http://speed.transip.nl/100mb.bin";
    wttr = "curl -sS 'https://wttr.in/leipzig?0'";
    ip = "dig +short myip.opendns.com @resolver1.opendns.com";
    ql = "qlmanage -p";

    # Filesystem
    l = "lsd -lAh";
    ld = "lsd -Ad */";
    mkdir = "mkdir -pv";
    rtmp = "rm -fr ~/tmp; mkdir ~/tmp";

    # GIT
    clone = "git clone $1";
    gch = "history | grep --color 'auto' 'git commit'";

    # Fun
    rain = "rainfall blue cyan green -i=4 -t=0.06"
  };

  home.file.".hushlogin".text = '''';

  imports = [
    ./fish
    ./zsh.nix
  ];

}
