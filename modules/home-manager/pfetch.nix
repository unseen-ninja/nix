{ ... }: { home = {

  shellAliases = {

    # USER redefines the shown username – it's just prettier
    fetch = "echo \"\"; USER=lemon pfetch";

  };

  sessionVariables = {

    # Which information to display
    # Allowed values:
    # ascii title os host kernel uptime pkgs memory shell editor wm de palette cpu
    PF_INFO = "title uptime os shell palette";

    # Which ascii art to use
    PF_ASCII="NixOS";

    # Color of info names
    PF_COL1 = 7;

    # Color of info data
    PF_COL2 = 15;

    # Color of title data
    PF_COL3 = 2;

  };

};}
