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
      mode = "createLink";
    };

    fcitx5 = {
      enable = true;
      apply = true;
      enableRounded = true;
    };
  };
}
