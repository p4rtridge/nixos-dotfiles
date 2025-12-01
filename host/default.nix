{ config, lib, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "partridge";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Ho_Chi_Minh";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

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

  nixpkgs.config.allowUnfree = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  #services.xserver.videoDrivers = [ "nvidia" ];
  #hardware = {
  #  graphics.enable = true;
  #  nvidia = {
  #    open = false;
  #    prime = {
  #      sync.enable = true;
  #
  #      intelBusId = "PCI:0:2:0";
  #      nvidiaBusId = "PCI:1:0:0";
  #    };
  #  };
  #};

  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  environment.systemPackages = with pkgs; [
    git
    vim
  ];

  nix.gc = {
    automatic = lib.mkDefault true;
    dates = lib.mkDefault "weekly";
    options = lib.mkDefault "--delete-older-than 7d";
  };

  system.stateVersion = "25.05"; # Did you read the comment?
}

