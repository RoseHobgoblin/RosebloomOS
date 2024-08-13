{
  config,
  lib,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
    windowrulev2 = [
      "plugin:hyprbars:nobar, ^floating:0"
    ];
  };
}