{
  pkgs,
  lib,
  inputs,
  theme,
  ...
}: {
    imports = [./config.nix ./binds.nix ./env.nix];
  
    wayland.windowManager.hyprland = {
        enable = true;
#        package = pkgs.hyprland;
#        xwayland.enable = true;
#	      systemd.enable = true;
    };
}
