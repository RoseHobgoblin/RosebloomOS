{ inputs, config, pkgs, nixpkgs, ... }: {
  home.packages = with pkgs; [
    wl-clipboard
    firefox 
    wofi 
    vscodium 
    git 
    pcmanfm 
    vesktop 
    pavucontrol 
    swaybg
    viewnior
    gimp
    audacity
    killall
    mpv
    qbittorrent
    gnumake
  ];
}