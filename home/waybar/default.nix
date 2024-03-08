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
      "bar" = {
        "name" = "Yuri"; 
        "fixed-center" = true;
        "reload_style_on_change" = true;
        "height" = 30;
        "width" = 1920;
        "modules-left" = [ 
          "hyprland/workspaces"
        ];
        "modules-center" = [];
        "modules-right" = [ "wireplumber" "clock" "battery"];

      };



      "battery" = {
        "format" = "{capacity}%";
      };

      "hyprland/workspaces"= {
        "persistent-workspaces" = {
          "*" = 4;
          "HDMI-A-1" = 4;
        };
      };

      "wireplumber" = {
        "format" = "{volume}%";
        "format-muted" = "";
        "max-volume" = "150";
        "scroll-step" = "0.2";
      };

      "clock" = {
        "format" = "%H:%M:%S";
        "tooltip-format" = "%A, %d %B %Y %H:%M:%S";
        "interval" = 1;
      };
    };
  };
}
