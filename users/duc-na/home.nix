{ pkgs, ...}:
{
  imports = [
    ../../home
  ];

  programs.git = {
    enable = true;
    settings = {
      init = {
        defaultBranch = "main";
      };
      gpg = {
        format = "ssh";
      };
      commit = {
        gpgsign = true;
      };
      tag = {
        gpgsign = true;
      };
      user = {
        email = "duc.na@teko.vn";
        name = "Đức Nguyễn Anh";
      };
    };
    signing = {
      signByDefault = true;
      key = "/home/duc-na/.ssh/id_rsa.pub";
    };
  };

  home.packages = with pkgs; [
    slack
  ];
}
