{ pkgs, ... }: {
  imports = [
    ../rosebloomos/bloomutils.nix
#    ./firefox.nix
    ./foot.nix
#    ./git.nix 
#    ./starship.nix
#    ./tmux.nix
#    ./zsh.nix
  ];

  home = {
    username = "rosa";
    homeDirectory = "/home/rosa";
    packages = with pkgs; [
      wl-clipboard
      firefox 
      waybar 
      wofi 
      vscodium 
      git 
      pcmanfm 
      vesktop 
      pavucontrol 
      swaybg
      viewnior
    ];
  };

  programs.home-manager.enable = true;
  home.stateVersion = "24.05";
}