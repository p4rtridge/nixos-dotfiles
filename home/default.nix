{ inputs, username, ... }:
{
  imports = [
    ./packages.nix
    ./theme.nix
    ./programs
  ];

  home = {
    inherit username;
    homeDirectory = "/home/${username}";
    stateVersion = "25.05";
  };

  home.file.".local/share/wallpapers/wallpaper.jpg".source = ./wallpaper.jpg;

  programs.bash = {
    enable = true;
    historySize = 1000;
    shellAliases = {
      ll = "ls -l";
      mkdir = "mkdir -p";
      ".." = "cd ..";
    };
    profileExtra = ''
      if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        exec hyprland
      fi
    '';
  };

  home.sessionVariables = {
    BROWSER = "zen";
    TERMINAL = "alacritty";
    EDITOR = "vim";
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
  };

  programs.git = {
    enable = true;
    userEmail = "anhduc130703@gmail.com";
    userName = "partridge";
  };
}
