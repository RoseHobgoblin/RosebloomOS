 {
  wayland.windowManager.hyprland.settings = {
    monitor = [ 
      "eDP-1, preferred, 0x0, 1"
      "DP-1, preferred, 0x0, 1"
      "HDMI-A-1, preferred, 1920x0, 1"
      "DP-3, 1024x768, -1024x0, auto"
    ];

      exec-once = [
        "waybar"
        "swaybg -o DP-1 -i Pictures/Wallpapers/rosebloomdp1new.png -o HDMI-A-1 -i Pictures/Wallpapers/rosepinehdmi.png -o DP-3 -i Pictures/Wallpapers/RosebloomDef2.png"
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

    plugin = {
      hyprbars = {
          bar_height = 40;
          bar_text_size = 17;
          bar_text_font = "TeX Gyre Chorus";
          bar_text_align = "left";
      };
    };

    general = {
      gaps_in = "5";
      gaps_out = "10";
      border_size = "0";
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

      bezier = [
        "in-out,.65,-0.01,0,.95"
        "woa,0,0,0,1"
      ];

      animation = [
        "windows,1,2,woa,popin"
        "border,1,10,default"
        "fade,1,10,default"
        "workspaces,1,5,in-out,slide"
      ];
    };

    dwindle = {
      pseudotile = "yes";
      preserve_split = "yes";
      force_split = 2;
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
      "8,monitor:DP-3"
      "9,monitor:DP-3"
    ];

    
  };
}
