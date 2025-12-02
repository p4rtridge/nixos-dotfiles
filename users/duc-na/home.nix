{ pkgs, ...}:
{
  imports = [
    ../../home
  ];

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
