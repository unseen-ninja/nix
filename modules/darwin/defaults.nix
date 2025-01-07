{ ... }: { system = {

  startup.chime = false;

  keyboard = {
    enableKeyMapping = true;
    remapCapsLockToControl = true;
  };

  defaults = {

    dock = {
      autohide = true;
      tilesize = 32;
      mineffect = "scale";
    };

    trackpad = {
      Clicking = true;
      TrackpadRightClick = true;
    };

    NSGlobalDomain = {
      AppleInterfaceStyle = "Dark";
      AppleShowAllFiles = true;
      KeyRepeat = 2;
      "com.apple.swipescrolldirection" = null; # disable natural scrolling
    };

    spaces.spans-displays = false;

    screencapture = {
      location = "~/Pictures/Screenshots/";
      include-date = true;
      disable-shadow = true;
    };

    loginwindow = {
      GuestEnabled = false;
      LoginwindowText = "Hi Lemon!";
      SHOWFULLNAME = false;
    };

  };

};}
