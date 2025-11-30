let
  configDir = ".config/hypr";
in
{
  home.file."${configDir}/hyprland.conf".source = ./hyprland.conf;
  home.file."${configDir}/monitor.conf".source = ./monitor.conf;
  home.file."${configDir}/key_binding.conf".source = ./key_binding.conf;
  home.file."${configDir}/layout.conf".source = ./layout.conf;
  home.file."${configDir}/window_rule.conf".source = ./window_rule.conf;
  home.file."${configDir}/input.conf".source = ./input.conf;
  home.file."${configDir}/misc.conf".source = ./misc.conf;
  home.file."${configDir}/exec.conf".source = ./exec.conf;

  services.hyprpaper.enable = true;
  services.hyprpaper.settings = let
    wallpaper = "~/.local/share/wallpapers/wallpaper.jpg";
  in
  {
    splash = false;
    ipc = "off";
    preload = [ wallpaper ];
    wallpaper = [ ",${wallpaper}" ];
  };
}
