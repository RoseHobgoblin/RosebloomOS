{ 
  lib,
  pkgs,
  inputs, 
  ... 
}: 

{
  imports = [
    ./boot.nix
    ./greetd.nix
    ./packages.nix
    ./sync.nix
  ];

  environment.etc = {
    "machine-id".source = "/nix/persist/etc/machine-id";
    "NetworkManager/system-connections".source = "/nix/persist/etc/NetworkManager/system-connections";
    "wireguard".source = "/nix/persist/etc/wireguard";
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
      roboto
      roboto-slab
      mplus-outline-fonts.githubRelease
      victor-mono
      i-dot-ming
      tamsyn
      nerd-fonts."m+"
      nerd-fonts.code-new-roman
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = ["M PLUS 1"];
        serif = [ "M PLUS 1" ];
        emoji = [ "OpenMoji Color" ];
      };
    };
  };

  programs.dconf.enable = true;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };


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

  programs.kdeconnect.enable = true;

  networking.networkmanager.enable = true;
  networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];
  networking.enableIPv6 = false;


  time.timeZone = "Pacific/Auckland";
  time.hardwareClockInLocalTime = true;

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

