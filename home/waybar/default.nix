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
      "height" = 15;
      "width" = 1920;
      "output" = "DP-1";
      "modules-left" = [ 
        "hyprland/workspaces"
       ];
      "modules-center" = [];
      "modules-right" = [ "wireplumber" ];
      "line-size" = 4;

      };
      "bar2" = {  # Add a second bar named "Yurii"
        "name" = "Yurii";
        "height" = 30;
        "width" = 1920;
        "output" = "HDMI-A-0";
        "modules-left" = [
           "hyprland/workspaces"
        ];
        "modules-center" = [];
        "modules-right" = [
        ];
        "line-size" = 4;
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
    };
  };
}
