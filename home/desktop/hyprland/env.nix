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
          "QT_QPA_PLATFORM,wayland"
          "QT_STYLE_OVERRIDE,kvantum"
          "QT_QPA_PLATFORMTHEME,qt5ct"
      ];
  };
}