{ ... }: { programs.starship = {

  enable = true;

  settings = {

    add_newline = false;
    format = "$character";
    right_format = "$directory$git_branch$git_status";

    character = {
      success_symbol = "[❯](bold green)";
      error_symbol = "[✗](bold red)";
    };

    directory = {
      truncation_length = 2;
      style = "green bold";
    };

    git_branch = {
      style = "mauve bold italic";
    };

    git_status = {
      style = "blue bold";
    };

  };

};}
