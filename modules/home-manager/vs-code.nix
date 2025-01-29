{ pkgs, ... }: { programs.vscode = {

  enable = true;
  enableUpdateCheck = false;
  enableExtensionUpdateCheck = false;
  mutableExtensionsDir = false;


  extensions = with pkgs.vscode-extensions; [
    astro-build.astro-vscode
    bbenoist.nix
    catppuccin.catppuccin-vsc
    catppuccin.catppuccin-vsc-icons
    eamodio.gitlens
    editorconfig.editorconfig
    vue.volar
  ];


  userSettings = {
    "telemetry.telemetryLevel" = "off";

    # Workbench Settings
    "workbench.statusBar.visible" = false;
    "editor.minimap.enabled" = false;
    "workbench.activityBar.location" = "hidden";

    # Theme Settings
    "workbench.colorTheme" = "Catppuccin Frappé";
    "workbench.iconTheme" = "catppuccin-frappe";
    "catppuccin.workbenchMode" = "flat";

    # Editor Settings
    "editor.fontSize" = 12;
    "editor.fontFamily" = "'Fira Code', 'monospace', monospace";
    "editor.fontLigatures" = true;
    "editor.renderWhitespace" = "all";
    "editor.tabSize" = 2;

    # File Settings
    "files.trimTrailingWhitespace" = true;
    "files.trimFinalNewlines" = true;
    "files.insertFinalNewline" = true;
    "diffEditor.ignoreTrimWhitespace" = false;
  };

};}
