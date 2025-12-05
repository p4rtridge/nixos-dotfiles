{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # file explorer
    xfce.thunar

    # monitor   
    btop

    # clipboard
    wl-clipboard
    cliphist
        

    # screenshot
    hyprshot
    xdg-utils

    # lang
    nodejs_24

    # ide
    vscode
    jetbrains.rust-rover
    jetbrains.datagrip

    # misc
    brightnessctl
    fastfetch
    hyprpaper
    ripgrep
  ];
}
