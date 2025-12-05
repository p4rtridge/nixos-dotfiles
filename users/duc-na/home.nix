{ pkgs, ...}:
{
  imports = [
    ../../home
  ];

  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "duc.na@teko.vn";
        name = "Đức Nguyễn Anh";
      };
    };
  };

  home.packages = with pkgs; [
    slack
    (yarn.override { nodejs = nodejs_24; })
  ];
}
