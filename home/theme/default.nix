{ inputs, pkgs, ... }:
{
  imports = with inputs; [
    catppuccin.homeModules.catppuccin
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-theme = "rose-pine-hyprcursor";
      gtk-theme = "Adwaita-dark";
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = ":";
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

    cursors = {
      enable = true;
      accent = "dark";
    };

    alacritty = {
      enable = true;
    };

    starship = {
      enable = true;
    };

    zsh-syntax-highlighting = {
      enable = true;
    };

    btop = {
      enable = true;
    };

    waybar = {
      enable = true;
    };

    dunst = {
      enable = true;
    };

    fcitx5 = {
      enable = false;
    };
  };
}
