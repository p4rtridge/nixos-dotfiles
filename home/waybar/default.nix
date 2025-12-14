{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        modules-left = [ "hyprland/workspaces" ];
        modules-right = [ "clock" "wireplumber" "battery" "network" "tray" ];

        "hyprland/workspaces" = {
          "disable-scroll" = true;
          "warp-on-scroll" = false;
          "all-outputs" = true;
          "format" = "{icon}";
          "format-icons" = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
          };
          "persistent-workspaces" = {
            "1" = [];
          };
        };

        "tray" = {
          "spacing" = 10;
        };

        "clock" = {
          "tooltip-format" = "{calendar}";
          "format-alt" = "{:%a, %d %b %Y}";
          "format" = "{:%H:%M}";
        };

        "network" = {
          "format" = "Online";
          "format-disconnected" = "Offline";
          "tooltip-format" = "⇣{bandwidthDownBytes} ⇡{bandwidthUpBytes}";
          "interval" = 5;
        };

        "wireplumber" = {
          "format" = "{icon} {volume}%";
          "format-muted" = "Muted";
          "format-icons" = {
            "default" = ["" "" ""];
          };
        };
        
        "battery" = {
          "format" = "{icon} {capacity}%";
          "format-icons" = {
            "default" = ["" "" "" "" ""];
          };
        };
      };
    };
   style = ''
     * {
       font-family: "Maple Mono NF", monospace;
       font-size: 16px;
       font-weight: bold;
       color: @text;
     }

     window#waybar {
       background-color: @base;
       border-color: @crust;
     }
    
     window#waybar.hidden {
       opacity: 0.5;
     }

     #workspaces button {
       color: @lavender;
       padding: 0 6px;
     }

     #clock,
     #battery,
     #network,
     #tray {
       padding: 0 8px;
     }
   '';
  };
}
