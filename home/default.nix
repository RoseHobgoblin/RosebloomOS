{ inputs, config, ... }:
{

  _module.args.theme = import ../theme;
  home = {
    username = "rosa";
    homeDirectory = "/home/rosa";
  };
  imports = [
    ./packages.nix
    ./desktop/ags
    ./desktop/hyprland
    ./desktop/mako
    #./desktop/swww
    ./desktop/waybar
    ./fcitx5
    ./firefox
    ./foot
    ./neovim
    ./toolkit
    ./starship
    ./xdg
    ./vesktop
    ./zsh
  ];
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
