{ inputs, username, ... }:
{
  imports = [
    ./hyprland
    ./packages
    ./theme
    ./shell
    ./direnv
    ./fcitx5
    ./rofi
    ./waybar
    ./dunst
    ./zen
    ./vesktop
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "25.11";
  };

  home.sessionVariables = {
    BROWSER = "zen";
    TERMINAL = "alacritty";
    EDITOR = "vim";
    NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
    WLR_NO_HARDWARE_CURSORS = "1";
    GDK_SCALE = "1.25";
    HYPRCURSOR_THEME = "rose-pine-hyprcursor";
    HYPRCURSOR_SIZE = "24";
    XCURSOR_THEME = "rose-pine-hyprcursor";
    XCURSOR_SIZE = "24";
  };

  home.file.".local/share/wallpapers/wallpaper.jpg".source = ./wallpaper.jpg;
}
