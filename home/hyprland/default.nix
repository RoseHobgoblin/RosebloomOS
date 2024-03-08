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
        xwayland.enable = true;
    };
}