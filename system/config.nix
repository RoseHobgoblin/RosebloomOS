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
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;

      substituters = ["https://hyprland.cachix.org"];
      trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    };
  };

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    terminus-nerdfont
  ];

  
  environment.systemPackages = with pkgs; [
    home-manager
    neovim
    git
    mako
    libnotify
    rosebloom-rebuild
    bloomshot
    cava
  ];

  users.users = {
    root.initialPassword = "hyperborea";
    rosa = {
      isNormalUser = true;
      extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
      initialPassword = "hyperborea";
    };
  };

  networking.networkmanager.enable = true;



  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  time.timeZone = "Pacific/Auckland";

  hardware.bluetooth.enable = true; 
  hardware.bluetooth.powerOnBoot = true; 
  services.blueman.enable = true;

  security.polkit.enable = true;
   i18n.defaultLocale = "en_US.UTF-8";
boot.initrd.kernelModules = [ "amdgpu" ];



services.xserver = {
	xkb.layout = "us";
	enable = true;
	videoDrivers = [ "amdgpu" ];
};
  users.mutableUsers = false;






programs.hyprland = {	
	enable = true;
	xwayland.enable = true;
};
services.openssh.enable = true;

system = {
    nixos = {
      distroName = lib.mkForce "RosebloomOS";
      distroId = lib.mkForce "rosebloomos";
    };
    stateVersion = "24.05"; # Did you read the comment?
  };
}

