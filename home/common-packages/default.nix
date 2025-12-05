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
    jetbrains-toolbox
    vscode

    # misc
    brightnessctl
    fastfetch
    hyprpaper
    ripgrep
  ];
}
