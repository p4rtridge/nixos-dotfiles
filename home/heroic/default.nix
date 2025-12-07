{ pkgs, ... }:
{
  home.packages = with pkgs; [
    gamemode
    gamescope
    (heroic.override {
      extraPkgs = pkgs: [
        pkgs.gamescope
        pkgs.gamemode
        pkgs.mangohud
      ];
    })
  ];
}
