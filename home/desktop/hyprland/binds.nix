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
    bind = [
      "${Mod}, RETURN, exec, foot"
      "${Modshift},Q, killactive,"
      "${Mod}, M, exit,"
      "${Mod}, V, togglefloating,"
      "${Mod}, R, exec, wofi --show drun"
      "${Mod}, P, pseudo,"
      "${Mod}, J, togglesplit,"
      "${Mod}, F2, exec, firefox"
      "${Mod}, D, exec, wofi --show=drun"
      "${Mod}, F3, exec, pcmanfm"
      ",Print, exec, bloomshot"
      "${Mod}, PRINT, exec, bloomshot window"
      "${Modshift}, PRINT, exec, bloomshot area"

      "${Mod}, left, movefocus, l"
      "${Mod}, right, movefocus, r"
      "${Mod}, up, movefocus, u"
      "${Mod}, down, movefocus, d"

      "${Mod}, 1, workspace, 1"
      "${Mod}, 2, workspace, 2"
      "${Mod}, 3, workspace, 3"
      "${Mod}, 4, workspace, 4"
      "${Mod}, 5, workspace, 5"
      "${Mod}, 6, workspace, 6"
      "${Mod}, 7, workspace, 7"
      "${Mod}, 8, workspace, 8"
      "${Mod}, 9, workspace, 9"
      "${Mod}, 0, workspace, 10"

      "${Mod} SHIFT, 1, movetoworkspace, 1"
      "${Mod} SHIFT, 2, movetoworkspace, 2"
      "${Mod} SHIFT, 3, movetoworkspace, 3"
      "${Mod} SHIFT, 4, movetoworkspace, 4"
      "${Mod} SHIFT, 5, movetoworkspace, 5"
      "${Mod} SHIFT, 6, movetoworkspace, 6"
      "${Mod} SHIFT, 7, movetoworkspace, 7"
      "${Mod} SHIFT, 8, movetoworkspace, 8"
      "${Mod} SHIFT, 9, movetoworkspace, 9"
      "${Mod} SHIFT, 0, movetoworkspace, 10"

      "${Mod}, S, togglespecialworkspace, magic"
      "${Mod} SHIFT, S, movetoworkspace, special:magic"

      "${Mod}, mouse_down, workspace, e+1"
      "${Mod}, mouse_up, workspace, e-1"
        ];

    bindm = [
      "${Mod}, mouse:272, movewindow"
      "${Mod}, mouse:273, resizewindow"
    ];
  };
}