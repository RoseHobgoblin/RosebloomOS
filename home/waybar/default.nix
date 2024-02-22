{
  pkgs,
  lib,
  config,
  #theme,
  ...
}:
{
  #import = [ ./style.nix ];
  xdg.configFile."waybar/style.css".text = pkgs.lib.readFile ./style.nix;
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    #settings = {
    #};
  };
}