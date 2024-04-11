{
  pkgs,
  inputs,
  lib,
  ...
}: 
 {
    imports = [./config.nix ./binds.nix ./env.nix];
  
    wayland.windowManager.hyprland = {
        enable = true;
        #package = inputs.hyprland.packages.${pkgs.system}.hyprland;
        plugins = [ 
          #inputs.hy3.packages.x86_64-linux.hy3
          #inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars
        ];
        xwayland.enable = true;
#	      systemd.enable = true;
    };
}