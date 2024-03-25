{ lib, pkgs, inputs, ... }: 


let
  bloomshot = import ../modules/scripts/bloomshot.nix {inherit pkgs; };
  rosebloom-rebuild = import ../modules/scripts/rosebloom-rebuild.nix {inherit pkgs; };
in

{
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
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      terminus-nerdfont
      nerdfonts
      roboto
      roboto-slab
    ];
    fontconfig = {
      defaultFonts = {
        serif = [ "M+1 Nerd Font" ];
      };
    };
  };

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  
  environment.systemPackages = with pkgs; [
    home-manager
    neovim
    git
    mako
    libnotify
    rosebloom-rebuild
    bloomshot
    libreoffice
  ];
  
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

  services.teamviewer.enable = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  #boot.initrd.verbose = false;
  #boot.consoleLogLevel = 0;
  #boot.kernelParams = [ "quiet" "udev.log_level=0" ]; 
  #boot.plymouth.enable = true;
  #boot.plymouth.theme = "bgrt"; 
  
  time.timeZone = "Pacific/Auckland";

  security.rtkit.enable = true;
  security.polkit.enable = true;
   

  i18n.defaultLocale = "en_US.UTF-8";
  i18n = {
    inputMethod = {
      enabled = "fcitx5";
      fcitx5.addons = with pkgs; [
        fcitx5-mozc
        fcitx5-gtk
       (pkgs.callPackage ../fcitx5-rose-pine/package.nix {})
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

