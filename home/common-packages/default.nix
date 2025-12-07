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

    # dev env
    devenv

    # lang
    nodejs_24

    # ide
    vscode
    jetbrains.rust-rover
    jetbrains.rider
    jetbrains.datagrip

    # misc
    brightnessctl
    playerctl
    fastfetch
    hyprpaper
    ripgrep
    jq
    unrar
  ];
}
