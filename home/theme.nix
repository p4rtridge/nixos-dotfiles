{ inputs, pkgs, ... }:
{
  imports = with inputs; [
    catppuccin.homeModules.catppuccin
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style.name = "kvantum";
  };

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "maroon";

    waybar = {
      enable = true;
    };

    vesktop = {
      enable = true;
    };
  };
}
