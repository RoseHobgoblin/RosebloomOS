{ 
  lib,
  pkgs,
  inputs, 
  ... 
}: 
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
    protontricks
    zenity
    p7zip
    #(libsForQt5.callPackage ../zkanji/package.nix {})
  ];
}