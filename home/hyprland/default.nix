{
  pkgs,
  lib,
  inputs,
  theme,
  ...
}: {
    imports = [./config.nix ./binds.nix ./rules.nix];
  
    programs.hyprland = {	
        enable = true;
        xwayland.enable = true;
    };
}