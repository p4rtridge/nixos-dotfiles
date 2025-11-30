{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        modules-left = [ "hyprland/workspaces" ];

        "hyprland/workspaces" = {
          disable-scroll = true;
          active-only = false;
          all-outputs = true;
          on-click = "activate";
          format = "{name}{icon}";
          format-icons = {
            urgent = "  ";
            default = " ";
            empty = "";
          };
          window-rewrite = {
            "title<.*youtube.*>" = " ";
            "(.*) - Thunar" = " ";
            "Steam" = " ";
	  };
        };
      };   
    };
  };
}
