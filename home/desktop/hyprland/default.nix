{
  pkgs,
  inputs,
  lib,
  ...
}: 

{
  imports = [
    ./config.nix 
    ./binds.nix 
    ./env.nix 
    ./rules.nix
    #./hyprlock
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    plugins = [ 
      #inputs.hy3.packages.x86_64-linux.hy3
      #inputs.hyprland-plugins.packages.${pkgs.system}.borders-plus-plus
      #inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars
    ];
    xwayland.enable = true;
	  systemd.enable = true;
  };
}