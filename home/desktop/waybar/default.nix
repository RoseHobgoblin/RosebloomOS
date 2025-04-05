{
  pkgs,
  lib,
  config,
  theme,
  ...
}:
{
  xdg.configFile."waybar/style.css".text = import ./style.nix {inherit theme;};  
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    settings = {
      DP-1 = {
        include = [
          "~/.config/waybar/modules.json" 
          "~/.config/waybar/hyprlandhortus.json"
        ];
        output = [
          "DP-1"
        ];
        fixed-center = true;
        reload_style_on_change = true;
        height = 30;
        width = 1920;
        modules-left = [ 
          "custom/dividerleft" 
          "hyprland/workspaces"
          "custom/dividerright" 
        ];
        modules-center = [];
        modules-right = [ 
          "custom/dividerleft" 
          "network"
          "custom/dividercentre" 
          "wireplumber" 
          "custom/dividercentre" 
          "clock" 
          "custom/dividerright" 
        ];
      };
      HDMI-A-1 = {
        include = [
          "~/.config/waybar/modules.json" 
          "~/.config/waybar/hyprlandhortus.json"
        ];
        output = [
          "HDMI-A-1"
        ];
        fixed-center = true;
        reload_style_on_change = true;
        height = 30;
        width = 1920;
        modules-left = [ 
          "custom/dividerleft" 
          "hyprland/workspaces"
          "custom/dividerright" 
        ];
      };
      DP-3 = {
        include = [
          "~/.config/waybar/modules.json" 
          "~/.config/waybar/hyprlandhortus.json"
        ];
        output = [
          "DP-3"
        ];
        fixed-center = true;
        reload_style_on_change = true;
        height = 30;
        modules-left = [ 
          "custom/dividerleft" 
        ];
        modules-center = [];
        modules-right = [
          "custom/dividerright" 
        ];
      };
      eDP-1 = {
        include = [
          "~/.config/waybar/modules.json" 
          "~/.config/waybar/hyprlandsilva.json"
        ];
        output = [
          "eDP-1"
        ];
        fixed-center = true;
        reload_style_on_change = true;
        height = 30;
        width = 1920;
        modules-left = [ 
          "custom/dividerleft" 
          "hyprland/workspaces"
          "custom/dividerright" 
        ];
        modules-center = [];
        modules-right = [ 
          "custom/dividerleft" 
          "battery" 
          "custom/dividercentre" 
          "wireplumber" 
          "custom/dividercentre" 
          "network"
          "custom/dividercentre" 
          "clock" 
          "custom/dividerright" 
        ];
      };
    };
  };

  xdg.configFile."waybar/modules.json".text = builtins.toJSON {
    "battery" = {
<<<<<<< HEAD
      #format-charging = ''<span foreground="#FF0000">BATT'TIE </span>{capacity:3}%''; # signalis
=======
      format-charging = ''<span foreground="#FF0000">BATTERY </span>{capacity:3}%''; # signalis
>>>>>>> 4986d047285c65e73cb537f31ba556d456d6f99f
      #format-charging = ''<span foreground="#c4a7e7">BATTERY </span>{capacity:3}%''; # rose pine
      #format-charging = ''<span foreground="#907aa9">BATTERY </span>{capacity:3}%''; # rose pine light
      format-charging = ''<span foreground="#C74DED">BATTERY </span>{capacity:3}%''; # sweet
      format = ''<span foreground="#e0def4">BATT'TIE </span>{capacity:3}%'';
    };

    "wireplumber" = {
      #format = ''<span foreground="#FF0000">VOLEUNME </span>{volume:3}%''; # signalis
      #format = ''<span foreground="#c4a7e7">VOLUME </span>{volume:3}%''; # rose pine
      #format = ''<span foreground="#907aa9">VOLUME </span>{volume:3}%''; # rose pine light
      format = ''<span foreground="#C74DED">VOLUME </span>{volume:3}%''; # sweet
      format-muted = ''VOLEUNME {volume:3}%'';
      max-volume = "150";
      scroll-step = "0.2";
    };
    
    "network" = {
      format-wifi = "DRANNET";
      format-ethernet = "DRANNET";
      format-disconnected = "DRANNET";
    };

    "clock" = {
      format = "{:%A, %d %B %Y  %H:%M:%S}";
      interval = 1;
      timezones = [
        "Pacific/Auckland"
        "Asia/Jakarta"
      ];
      actions = {
        on-scroll-up = "tz_up";
        on-scroll-down = "tz_down";
      };
    };
#
   # "custom/dividercentre" = {
   #   format = "」:「";
   # };
#
   # "custom/dividerleft" = {
   #   format = ":「";
   # };
#
   # "custom/dividerright" = {
   #   format = "」:";
   # };



    "custom/dividercentre" = {
      format = "──┐:┌──";
    };

    "custom/dividerleft" = {
      format = " ┌──";
    };

    "custom/dividerright" = {
      format = "──┐ ";
    };
  };

  xdg.configFile."waybar/hyprlandhortus.json".text = builtins.toJSON {
    "hyprland/workspaces" = {
      on-click = "activate";
      format = "[ {name} ]";
      active-only = false;
      format-icons = {
        "active" = "";
		    "default" = "";
        "empty" = "";
      };
      "persistent-workspaces" = {
        "DP-1" = 4;
        "HDMI-A-1" = 3;
        "DP-3" = 2;
      };
    };
  };

  xdg.configFile."waybar/hyprlandsilva.json".text = builtins.toJSON {
    "hyprland/workspaces" = {
      on-click = "activate";
      format = "[ {name} ]";
      active-only = false;
      format-icons = {
        "active" = "";
		    "default" = "";
        "empty" = "";
      };
      "persistent-workspaces" = {
        "*" = 5;
      };
    };
  };
}
