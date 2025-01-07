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
    executable = true;
    text = ''
      #!/bin/sh

      TYPE=$(gum choose "fix" "feat" "docs" "content" "style" "refactor" "test" "chore" "revert")
      SCOPE=$(gum input --placeholder "scope")

      # Since the scope is optional, wrap it in parentheses if it has a value.
      test -n "$SCOPE" && SCOPE="($SCOPE)"

      # Pre-populate the input with the type(scope): so that the user may change it
      SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
      DESCRIPTION=$(gum write --placeholder "Details of this change")

      # Commit these changes if user confirms
      gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
    '';
  };

}
