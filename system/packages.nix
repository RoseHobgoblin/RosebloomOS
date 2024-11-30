{ 
  lib,
  pkgs,
  inputs, 
  ... 
}: 
let
  bloomshot = import ../modules/scripts/bloomshot.nix {inherit pkgs; };
  rosebloom-rebuild = import ../modules/scripts/rosebloom-rebuild.nix {inherit pkgs; };
in 
{
  environment.systemPackages = with pkgs; [
    home-manager
    neovim
    git
    libnotify
    rosebloom-rebuild
    bloomshot
    libreoffice
    wineWowPackages.stable
    wgnord
    (callPackage ../modules/ammo/package.nix {})
    (callPackage ../modules/rinpy/package.nix {})
    protontricks
    zenity
    p7zip
    #(libsForQt5.callPackage ../zkanji/package.nix {})
  ];
}