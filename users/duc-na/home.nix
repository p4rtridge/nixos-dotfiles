{ pkgs, ...}:
{
  imports = [
    ../../home
  ];

  home.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };

  programs.git = {
    enable = true;
    userEmail = "duc.na@teko.vn";
    userName = "Đức Nguyễn Anh";
  };

  home.packages = with pkgs; [
    slack
    (yarn.override { nodejs = nodejs_24; })
  ];
}
