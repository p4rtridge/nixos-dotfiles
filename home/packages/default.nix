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

    # development
    gcc
    gnumake

    # ide
    vscode
    jetbrains.rust-rover
    jetbrains.datagrip

    # hyprland
    brightnessctl
    playerctl
    hyprpaper

    # search
    fastfetch
    ripgrep
    jq

    # compression
    unrar
  ];
}
