{
  pkgs,
  lib,
  inputs,
  ...
}: 
 {
    imports = [./config.nix ./binds.nix ./env.nix];
  
    wayland.windowManager.hyprland = {
        enable = true;
        plugins = [ 
          #inputs.hy3.packages.x86_64-linux.hy3
          #inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars
        ];
        #package = pkgs.hyprland;
        xwayland.enable = true;
#	      systemd.enable = true;
    };
}
