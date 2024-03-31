{
  pkgs,
  lib,
  inputs,
  hyprland,
  hy3,
  ...
}: {
    imports = [./config.nix ./binds.nix ./env.nix];
  
    wayland.windowManager.hyprland = {
        enable = true;
        plugins = [ hy3.packages.x86_64-linux.hy3 ];

#        package = pkgs.hyprland;
#        xwayland.enable = true;
#	      systemd.enable = true;
    };
}
