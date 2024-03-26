 {
  wayland.windowManager.hyprland.settings = {
      monitor = [ 
        "eDP-1, preferred, 0x0, 1"
        "DP-1, preferred, 0x0, 1"
        "HDMI-A-1, preferred, 1920x0, 1"
        "DP-3, 1024x768, -1024x0, 1"
      ];

      exec-once = [
        "waybar"
        "swaybg -o DP-1 -i Pictures/Wallpapers/RosebloomDef1.png -o HDMI-A-1 -i Pictures/Wallpapers/rosepinehdmi.png -o DP-3 -i Pictures/Wallpapers/RosebloomDef2.png"
        "swaybg -o eDP-1 -i Pictures/Wallpapers/RosebloomDef1.png"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "fcitx5"
      ];

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
        "col.active_border" = "rgb(c4a7e7) 45deg";
        "col.inactive_border" = "rgb(1f1d2e)";

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
}
