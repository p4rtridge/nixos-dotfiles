{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        modules-left = [ "hyprland/workspaces" "custom/sep" "hyprland/window" "custom/sep" ];
        modules-center = [];
        modules-right = [ "custom/sep" "network" "custom/sep" "clock" "custom/sep" "tray" ];

        "hyprland/workspaces" = {
          disable-scroll = true;
          warp-on-scroll = false;
          format = "{name}";
        };

        "tray" = {
          spacing = 10;
        };
        
        "clock" = {
          format-alt = "{:%Y-%m-%d}";
        };

        "network" = {
          format = "Online";
          format-disconnected = "Disconnected ⚠";
        };

        "custom/sep" = {
          format = "|";
          interval = 0;
        };
      };   
    };
   style = ''
     @import url("./catppuccin.css");
     
     * {
       font-family: "Maple Mono NF", monospace;
       font-size: 16px;
       font-weight: bold;
     }
     
     window#waybar {
       background-color: @surface0;
       color: @text;
     }

     #workspaces button {
       padding: 0 6px;
       color: @subtext0;
       background: transparent;
     }

     #workspaces button.active {
       color: @text;
     }
 
     #workspaces button.empty {
       color: @overlay0;
     }

     #workspaces button.empty.active {
       color: @text;
     }

     #workspaces button.urgent {
       background-color: @crust;
     }

     button:hover {
       background: inherit;
     }

     #clock,
     #custom-sep,
     #battery,
     #cpu,
     #memory,
     #disk,
     #network,
     #tray {
       padding: 0 8px;
       color: @text;
     }

     #custom-sep {
       color: @mantle;
     }

     #clock {
       color: @text;
     }

     #battery {
       color: @text;
     }

     #disk {
       color: @text;
     }

     #memory {
       color: @text;
     }

     #cpu {
       color: @text;
     }

     #network {
       color: @text;
     }

     #network.disconnected {
       background-color: @red;
     }

     #tray {
       background-color: @overlay2;
     }
   '';
  };
}
