{ pkgs, ...}:
{
  home.packages = with pkgs; [
    ripgrep
    htop
    alacritty
    starship
    vesktop
    hyprpaper
    xfce.thunar
    cliphist
    wl-clipboard
    xdg-utils
    hyprshot
    fastfetch
  ];
}
