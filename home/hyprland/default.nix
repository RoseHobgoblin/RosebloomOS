let
    Mod = "SUPER";
    Modshift = "${Mod}SHIFT";
in {
  wayland.windowManager.hyprland = {

    enable = true;

    settings = {
        monitor=", preferred, auto, 1";

        exec-once = [
            "waybar"
            "swaybg -o DP-1 -i Pictures/Wallpapers/RosebloomDef1.png -o HDMI-A-1 -i Pictures/Wallpapers/rosepineblack.png"
            "swaybg -o eDP-1 -i Pictures/Wallpapers/RosebloomDef1.png"
            "wl-paste --type text --watch cliphist store"
            "wl-paste --type image --watch cliphist store"
            "fcitx5"
            "export INPUT_METHOD=fcitx"
            "export QT_IM_MODULE=fcitx"
            "export GTK_IM_MODULE=wayland"
            "export XMODIFIERS=@im=fcitx"
            "export XIM_SERVERS=fcitx"
        ];

        env = "XCURSOR_SIZE,24";

        input = {
            kb_layout = "us";

            follow_mouse = "1";

            touchpad = {
                natural_scroll = "no";
            };

            sensitivity = "0";
        };

        general = {
            gaps_in = "5";
            gaps_out = "10";
            border_size = "2";
            "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
            "col.inactive_border" = "rgba(595959aa)";

            layout = "dwindle";

            allow_tearing = "false";
        };

        decoration = {
            
            blur = {
                enabled = "true";
                size = "3";
                passes = "1";
            };

            drop_shadow = "yes";
            shadow_range = "4";
            shadow_render_power = "3";
            "col.shadow" = "rgba(1a1a1aee)";
        };

        animations = {
            enabled = "yes";

            bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

            animation = [
                "windows, 1, 7, myBezier"
                "windowsOut, 1, 7, default, popin 80%"
                "border, 1, 10, default"
                "borderangle, 1, 8, default"
                "fade, 1, 7, default"
                "workspaces, 1, 6, default"
            ];
        };

        dwindle = {
            pseudotile = "yes";
            preserve_split = "yes";
        };

        master = {
            new_is_master = "true";
        };

        gestures = {
            workspace_swipe = "off";
        };

        # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
        bind = [
            "${Mod}, RETURN, exec, foot"
            "${Modshift},Q, killactive,"
            "${Mod}, M, exit,"
            "${Mod}, E, exec, dolphin"
            "${Mod}, V, togglefloating,"
            "${Mod}, R, exec, wofi --show drun"
            "${Mod}, P, pseudo,"
            "${Mod}, J, togglesplit,"
            "${Mod}, F2, exec, librewolf"
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

        workspace = [
            "1,monitor:DP-1"
            "2,monitor:DP-1"
            "3,monitor:DP-1"
            "4,monitor:DP-1"
            "5,monitor:HDMI-A-1"
            "6,monitor:HDMI-A-1"
            "7,monitor:HDMI-A-1"
            "8,monitor:HDMI-A-1"
        ];
    };
  };
}
