{ inputs, config, pkgs, nixpkgs, ... }: {
  imports = [
#    ./firefox.nix
     ./foot
     ./hyprland
     ./waybar
#    ./git.nix 
#    ./starship.nix
#    ./tmux.nix
#    ./zsh.nix
  ];
  

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
    ];


#  programs.home-manager.enable = true;
 # home.stateVersion = "24.05";
}