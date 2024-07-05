{
  lib,
  pkgs,
  config,
  ...
}:
let
  requiredDeps = with pkgs; [ config.wayland.windowManager.hyprland.package ];
  guiDeps = with pkgs; [ swww ];
  dependencies = requiredDeps ++ guiDeps;
in
{

  home = {
    packages = with pkgs; [ swww ];
  };
}
