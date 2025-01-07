{ ... }: { programs.kitty = {

  enable = true;

  settings = {

    confirm_os_window_close = 0;
    hide_window_decorations = "titlebar-only";

    window_padding_width = 16;
    background_opacity = 0.95;
    background_blur = 20;

    cursor_shape = "underline";
    cursor_beam_thickness = 1.2;
    cursor_underline_thickness = 2.0;
    cursor_blink_interval = -1.0;
    cursor_stop_blinking_after = 5.0;

    adjust_line_height = 10;
    adjust_baseline = -1;

    font_family = "family='Fira Code' style=Regular variable_name=FiraCodeRoman features='+cv02 +cv05 +cv09 +cv14 +ss04 +cv16 +cv31 +cv25 +cv26 +cv32 +cv28 +ss10 +zero +onum'";
    bold_font = "family='Fira Code' style=Bold variable_name=FiraCodeRoman features='+cv02 +cv05 +cv09 +cv14 +ss04 +cv16 +cv31 +cv25 +cv26 +cv32 +cv28 +ss10 +zero +onum'";
    italic_font = "family='Victor Mono' style=Italic features=+ss01";
    bold_italic_font = "family='Victor Mono' style='Bold Italic' features=+ss01";

  };

};}
