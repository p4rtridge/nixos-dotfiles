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
      LC_NAME = "en_US.UTF-8";
      LC_TELEPHONE = "en_US.UTF-8";
      LC_MONETARY = "en_US.UTF-8";
      LC_ADDRESS = "en_US.UTF-8";
      LC_PAPER = "en_US.UTF-8";
      LC_MESSAGES = "en_US.UTF-8";
      LC_CTYPE = "en_US.UTF-8";
      LC_ALL = "en_US.UTF-8";
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    shell = pkgs.zsh;
    extraGroups = [
      "wheel"
      "networkmanager"
      "podman"
    ];
  };

  nixpkgs.config.allowUnfree = true;
  
  nix.settings = {
    trusted-users = [ username ];
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  networking.hostName = "partridge";
  networking.networkmanager.enable = true;
  
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  virtualisation = {
    containers.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

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
