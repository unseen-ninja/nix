{ pkgs, ... }: { programs.vscode = {

  enable = true;
  mutableExtensionsDir = true;

  profiles.default = {

    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;

    extensions = with pkgs.vscode-extensions; [
      astro-build.astro-vscode
      bbenoist.nix
      bradlc.vscode-tailwindcss
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons
      eamodio.gitlens
      editorconfig.editorconfig
      vue.volar
    ];

    userSettings = {
      "telemetry.telemetryLevel" = "on";

      # Theme Settings (Catppuccin)
      "workbench.colorTheme" = "Catppuccin Frappé";
      "workbench.iconTheme" = "catppuccin-frappe";
      "catppuccin.workbenchMode" = "flat";

      # General
      "breadcrumbs.enabled" = false;
      "chat.commandCenter.enabled" = false;
      "window.commandCenter" = false;
      "workbench.layoutControl.enabled" = false;

      # Workbench Settings
      "workbench.activityBar.location" = "hidden";
      "workbench.navigationControl.enabled" = false;
      "workbench.sideBar.location" = "left";
      "workbench.startupEditor" = "none";
      "workbench.statusBar.visible" = false;
      "workbench.tips.enabled" = false;
      "workbench.tree.enableStickyScroll" = false;
      "workbench.tree.renderIndentGuides" = "none";
      "workbench.tree.indent" = 12;

      # Editor Settings
      "editor.fontFamily" = "'Fira Code', 'monospace', monospace";
      "editor.fontLigatures" = true;
      "editor.fontSize" = 12;
      "editor.lineHeight" = 2;
      "editor.minimap.enabled" = false;
      "editor.renderWhitespace" = "all";
      "editor.stickyScroll.enabled" = false;
      "editor.tabSize" = 2;

      # Explorer Settings
      "explorer.compactFolders" = false;
      "explorer.confirmDelete" = false;
      "explorer.confirmDragAndDrop" = false;

      # File Settings
      "diffEditor.ignoreTrimWhitespace" = false;
      "files.insertFinalNewline" = true;
      "files.trimFinalNewlines" = true;
      "files.trimTrailingWhitespace" = true;

      "files.associations" = {
        "*.svg" = "default";
      };
    };
  };
};}
