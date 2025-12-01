{ pkgs, ...}:
{
  home.packages = with pkgs; [
    ripgrep
    htop
    vesktop
    hyprpaper
    xfce.thunar
    cliphist
    wl-clipboard
    xdg-utils
    hyprshot
    fastfetch
    slack
    jetbrains-toolbox
    vscode
    yarn
    nodejs_24
  ];
}
