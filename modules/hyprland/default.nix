{ inputs, pkgs, ... }:
let
  hostSystem = pkgs.stdenv.hostPlatform.system;
in
{
  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages.${hostSystem}.hyprland;
    portalPackage = inputs.hyprland.packages.${hostSystem}.xdg-desktop-portal-hyprland;
    xwayland.enable = true;
  };

  services.displayManager.defaultSession = "hyprland";

  fonts = {
    enableDefaultPackages = false;    

    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-emoji
      noto-fonts-color-emoji
      nerd-fonts.symbols-only
      nerd-fonts.jetbrains-mono
      maple-mono.NF
    ];
    
    fontconfig.defaultFonts = {
      serif = [ "Noto Serif" "Noto Color Emoji" ];
      monospace = [ "Maple Mono NF"  "JetBrainsMono Nerd Font" "Noto Color Emoji" ];
      sansSerif = [ "Noto Sans" "Noto Color Emoji" ];
      emoji = [ "Noto Color Emoji" ];
    };
  };
}
