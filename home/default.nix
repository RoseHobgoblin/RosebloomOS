{ inputs, config, ... }:
{

  _module.args.theme = import ../theme;
  home = {
    username = "rosa";
    homeDirectory = "/home/rosa";
  };
  imports = [
    ./packages.nix
    ./foot
    ./hyprland
    ./waybar
    ./toolkit
    ./starship
    #./ags
    ./vesktop
    ./zsh
    ./mako
  ];
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}