{ config, pkgs, ... }:
{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.alacritty}/bin/alacritty";
    font = "Maple Mono NF";
    location = "center";
    cycle = true;
    modes = [ "drun" "window" ];
    extraConfig = {
      display-drun = "";
      display-window = "";
      drun-display-format = "{name}";
    };
    theme = let
      inherit (config.lib.formats.rasi) mkLiteral;
    in {
      "window" = {
        enabled = true;
        fullscreen = false;
        width = mkLiteral "30em";
        cursor = "default";
        border-radius = mkLiteral "15px";
      };

      "mainbox" = {
        enabled = true;
        spacing = mkLiteral "0px";
        orientation = mkLiteral "vertical";
        children = [ "inputbar" "listbox" ];
      };

      "listbox" = {
        spacing = mkLiteral "20px";
        padding = mkLiteral "20px";
        background-color = mkLiteral "transparent";
        orientation = mkLiteral "vertical";
        children = [ "message" "listview" ];
      };
      
      "inputbar" = {
        enabled = true;
        spacing = mkLiteral "10px";
        padding = mkLiteral "10px 10px";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@foreground";
        orientation = mkLiteral "horizontal";
        children = [ "textbox-prompt-colon" "entry" "mode-switcher" ];
      };

      "textbox-prompt-colon" = {
        enabled = true;
        expand = false;
        str = "";
        padding = mkLiteral "12px 15px";
        border-radius = mkLiteral "100%";
        background-color = mkLiteral "@background";
        text-color = mkLiteral "inherit";
       };

      "entry" = {
        enabled = true;
        expand = true;
        padding = mkLiteral "12px 16px";
        border-radius = mkLiteral "100%";
        background-color = mkLiteral "@background";
        text-color = mkLiteral "inherit";
        cursor = mkLiteral "text";
        placeholder = "Search...";
        placeholder-color = mkLiteral "inherit";
      };

      "mode-switcher" = {
        enabled = true;
        spacing = mkLiteral "10px";
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@foreground";
      };

      "button" = {
        width = mkLiteral "80px";
        padding = mkLiteral "12px";
        border-radius = mkLiteral "100%";
        text-color = mkLiteral "inherit";
        cursor = mkLiteral "pointer";
      };

      "listview" = {
        enabled = true;
        lines = 5;
        dynamic = true;
        scrollbar = true;
        reverse = false;
        spacing = mkLiteral "10px";
      };


      "element" = {
        enabled = true;
        spacing = mkLiteral "10px";
        padding = mkLiteral "10px";
        border-radius = mkLiteral "15px";
        orientation = mkLiteral "vertical";
      };
    };
  };
}
