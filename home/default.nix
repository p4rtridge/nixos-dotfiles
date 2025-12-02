{ inputs, username, ... }:
{
  imports = [
    ./hyprland
    ./common-packages
    ./theme
    ./shell
    ./fcitx5
    ./rofi
    ./waybar
    ./zen
    ./vesktop
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };

  home.file.".local/share/wallpapers/wallpaper.jpg".source = ./wallpaper.jpg;
}
