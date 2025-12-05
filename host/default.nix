{
  config,
  lib,
  pkgs,
  username,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  time.timeZone = "Asia/Ho_Chi_Minh";

  i18n = {
    defaultLocale = "en_US.UTF-8";

    extraLocaleSettings = {
      LC_NAME = "vi_VN";
      LC_TELEPHONE = "vi_VN";
      LC_MONETARY = "vi_VN";
      LC_ADDRESS = "vi_VN";
      LC_PAPER = "vi_VN";
    };
  };

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  networking.hostName = "partridge";
  networking.networkmanager.enable = true;

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nixpkgs.config.allowUnfree = true;

  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [
    git
    vim
    nixfmt-rfc-style
  ];

  nix.gc = {
    automatic = lib.mkDefault true;
    dates = lib.mkDefault "weekly";
    options = lib.mkDefault "--delete-older-than 7d";
  };

  system.stateVersion = "25.11";
}
