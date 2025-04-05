{
  config,
  lib,
  theme,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
    monitor = [ 
      "eDP-1, preferred, 0x0, 1"
      "DP-1, preferred, 0x0, 1"
      "HDMI-A-1, preferred, 1920x0, 1"
      "DP-3, 1280x1024, -1280x0, auto"
    ];

    exec-once = [
      "waybar"
      "swaybg -o DP-1 -i ${theme.wall1} -o HDMI-A-1 -i ${theme.wall1} -o DP-3 -i ${theme.wall1}"
      "swaybg -o eDP-1 -i RosebloomOS/theme/ACK.png"
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
        bar_height = 20;
        bar_text_size = 10;
        "col.text" = "rgb(FFFFFF)";
        bar_text_font = "Tamsyn";
        bar_text_align = "left";
        bar_title_enabled = "false";
        #bar_color = "rgb(e9e0c5)"; # meigui
        bar_color = "rgb(FF0000)"; # signalis
        #bar_color = "rgb(26233a)"; # rose pine
        # bar_color = "rgb(f2e9e1)"; # rose pine dawn
        #bar_precedence_over_border = "yes";
        # hyprbars-button = [
        #   "rgb(FF0000), 20, ◬, hyprctl dispatch killactive"
        #   "rgb(FF0000), 20,▽, hyprctl dispatch fullscreen 1"
        # ];
      };
      borders-plus-plus = {
         add_borders = 2;
          
        # signalis
        "col.border_1" = "rgb(000000)";
        "col.border_2" = "rgb(FF0000)";

        # mei gui
        #"col.border_1" = "rgb(000000)";
        #"col.border_2" = "rgb(e9e0c5)";

         border_size_1 = 2;

      #   natural_rounding = "yes";
      };
    };

    general = {
      gaps_in = "5";
      gaps_out = "18";
      border_size = "1";
      # signalis
      "col.active_border" = "rgb(FFFFFF)" ; 
      "col.inactive_border" = "rgb(FF0000)";
      # meigui
      #"col.active_border" = "rgb(e44180)" ; 
      #"col.inactive_border" = "rgb(e9e0c5)";
      # rose pine
      # "col.active_border" = "rgb(26233a)" ; # 
      # "col.inactive_border" = "rgb(26233a)"; # rose pine
      # "col.active_border" = "rgb(f2e9e1)"; # rose pine dawn
      # "col.inactive_border" = "rgb(f2e9e1)"; # rose pine dawn
      # "col.active_border" = "rgb(5800E2) rgb(FF00E6)"; # sweet
      # "col.inactive_border" = "rgb(5800E2) rgb(FF00E6)"; # sweet

      layout = "dwindle";

      allow_tearing = "false";
    };

    decoration = {  
      blur = {
        enabled = "true";
        size = "3";
        passes = "1";
      };
      #rounding = 8;

      #drop_shadow = "true";
      #shadow_range = "4";
      #shadow_render_power = "3";
      #"col.shadow" = "rgba(1a1a1aee)";
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
      new_status = "master";
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

    misc = {
      force_default_wallpaper = 0;
    };
  };
}
