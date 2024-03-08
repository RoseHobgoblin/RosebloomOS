{
  config,
  lib,
  ...
}:
let
    Mod = "SUPER";
    Modshift = "${Mod}SHIFT";
in {
  wayland.windowManager.hyprland.settings = {
      env = [
          "QT_IM_MODULE, fcitx"
          "XMODIFIERS, @im=fcitx"
          "SDL_IM_MODULE, fcitx:"
          "GLFW_IM_MODULE, ibus"
          "INPUT_METHOD, fcitx"
      ];
  };
}