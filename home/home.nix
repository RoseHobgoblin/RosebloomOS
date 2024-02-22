{ pkgs, ... }: {
  imports = [
#    ./firefox.nix
    ./foot
    ./hyprland
#    ./waybar
#    ./git.nix 
#    ./starship.nix
#    ./tmux.nix
#    ./zsh.nix
  ];
  

  home = {
    username = "rosa";
    homeDirectory = "/home/rosa";
    _module.args.theme = import ../theme;
    packages = with pkgs; [
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
      font-manager
      audacity
    ];
  };

  programs.home-manager.enable = true;
  home.stateVersion = "24.05";
}