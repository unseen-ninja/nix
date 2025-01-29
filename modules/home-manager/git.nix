{ pkgs, ... }: {

  programs.git = {
    enable = true;
    package = pkgs.git;

    userName = "lemon";
    userEmail = "git@unseen.ninja";

    aliases = {
      amend = "commit --amend --no-edit";
      purge = "!git reset --hard && git clean -f";
      st = "status --short";
      ic = "!git init && git commit --allow-empty -m \"init repo\" -m \"This initialising commit is intentionally left blank.\"";
    };

    extraConfig = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      github = {
        user = "unseen-ninja";
        email = "35840154+unseen-ninja@users.noreply.github.com";
      };
      commit.gpgsign = true;
      gpg.program = "/run/current-system/sw/bin/gpg";
      user.signkey = "A3A90BA2E4AA4E83EDDAE6CC3D1487DDE8BA66D2";
    };
  };


  home.file.".local/bin/commit" = {
    source = ../../bin/commit;
    executable = true;
  };

}
