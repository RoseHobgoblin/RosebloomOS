{
  config,
  lib,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
      env = [
          "QT_IM_MODULE, fcitx"
          "XMODIFIERS, @im=fcitx"
          "SDL_IM_MODULE, fcitx:"
      ];
  };
}