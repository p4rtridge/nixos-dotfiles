{ inputs, pkgs, ... }:
let
  hostSystem = pkgs.stdenv.hostPlatform.system;
in
{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        dmenu = "${pkgs.rofi}/bin/rofi -dmenu";
        browser = "xdg-open";
        
        follow = "mouse";
        origin = "top-right";
        mouse_left_click = "do_action";        
        mouse_middle_click = "close_all";
        mouse_right_click = "close_current";

        sort = "update";
        notification_limit = 5;
        stack_duplicates = false;
        show_indicators = "no";
        hide_duplicate_count = true;

        font = "JetBrainsMono Nerd Font";
        icon_theme = "Papirus-Dark";
        format = "<b>󰁕 %a</b>\\n%s\\n<i>%b</i>";
        word_wrap = true;
        ellipsize = "end";
        gap_size = "5";
        corners = "all";
        corner_radius = "5";
        progress_bar_corners = "all";
        progress_bar_corner_radius = "5";
        frame_width = "2";
      };
    };
  };
}
