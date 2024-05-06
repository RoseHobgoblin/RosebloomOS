{ lib, pkgs, inputs, ... }: 


let
  bloomshot = import ../modules/scripts/bloomshot.nix {inherit pkgs; };
  rosebloom-rebuild = import ../modules/scripts/rosebloom-rebuild.nix {inherit pkgs; };
in

{
  imports = [
    ./boot.nix
    ./greetd.nix
  ];

  environment.etc = {
    "machine-id".source = "/nix/persist/etc/machine-id";
    "NetworkManager/system-connections".source = "/nix/persist/etc/NetworkManager/system-connections";
  };
  
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;
  
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;

      substituters = ["https://hyprland.cachix.org"];
      trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    };
  };

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      openmoji-color
      (nerdfonts.override { fonts = [ "MPlus" ]; })
      roboto
      roboto-slab
    ];
    fontconfig = {
      defaultFonts = {
        serif = [ "M+1 Nerd Font" ];
        emoji = [ "OpenMoji Color" ];
      };
    };
  };

  programs.hyprland.enable = true;
  programs.hyprland.package = inputs.hyprland.packages.${pkgs.system}.hyprland; 
  programs.hyprland.xwayland.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };
  
  environment.systemPackages = with pkgs; [
    home-manager
    neovim
    git
    libnotify
    rosebloom-rebuild
    bloomshot
    libreoffice
    #(libsForQt5.callPackage ../zkanji/package.nix {})
  ];

  services.gvfs.enable = true; # Mount, trash, and other functionalities
services.tumbler.enable = true; # Thumbnail support for images

  
  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;

  users = {
    mutableUsers = false;
    users = {
      root.initialPassword = "hyperborea";
      rosa = {
        isNormalUser = true;
        extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
        initialPassword = "hyperborea";
      };
    };
  };

  networking.networkmanager.enable = true;

  #services.teamviewer.enable = true;



  
  time.timeZone = "Pacific/Auckland";

  security.rtkit.enable = true;
  security.polkit.enable = true;

  i18n = {
    defaultLocale = "en_US.UTF-8";
    inputMethod = {
      enabled = "fcitx5";
      fcitx5.addons = with pkgs; [
        fcitx5-mozc
        fcitx5-gtk
        fcitx5-rose-pine
      ];
    };
  };

  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true; 
  services.blueman.enable = true;

  services.openssh.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  system = {
    nixos = {
      distroName = lib.mkForce "RosebloomOS";
      distroId = lib.mkForce "rosebloomos";
    };
    stateVersion = "24.05";
  };
}

