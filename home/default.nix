{ inputs, config, ... }:
{

  _module.args.theme = import ../theme;
  home = {
    username = "rosa";
    homeDirectory = "/home/rosa";
  };
  imports = [
    ./packages.nix
    #./desktop/ags
    ./desktop/hyprland
    ./desktop/mako
    ./desktop/waybar
    ./firefox
    ./foot
    ./neovim
    ./toolkit
    ./starship
    #./xdg
    ./vesktop
    ./zsh
  ];
  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}