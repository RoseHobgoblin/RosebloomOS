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
        include = "~/.config/waybar/modules.json";
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
        include = "~/.config/waybar/modules.json";
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
        include = "~/.config/waybar/modules.json";
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
        include = "~/.config/waybar/modules.json";
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
          "network"
          "custom/dividercentre" 
          "wireplumber" 
          "custom/dividercentre" 
          "clock" 
          "custom/dividerright" 
        ];
      };
    };
  };
  xdg.configFile."waybar/modules.json".text = builtins.toJSON {
            "battery" = {
          format = "電池 {capacity}%";
        };

        "hyprland/workspaces" = {
            on-click = "activate";
            format = "{icon}";
            active-only = false;
            format-icons = {
              "active" = "";
		          "default" = "";
              "empty" = "";
            };
          "persistent-workspaces" = {
            "*" = 4;
            "HDMI-A-1" = 4;
          };
        };

        "wireplumber" = {
          format = ''音量  {volume}%'';
          format-muted = "音量  {volume}%";
          max-volume = "150";
          scroll-step = "0.2";
        };
        
        "network" = {
          format-wifi = "通信網";
          format-ethernet = "通信網";
          format-disconnected = "通信網";
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

        "custom/dividercentre" = {
          format = "」:「";
        };

        "custom/dividerleft" = {
          format = ":「";
        };

        "custom/dividerright" = {
          format = "」:";
        };
  };
}
