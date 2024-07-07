{
  config,
  pkgs,
  ...
}: {
  xdg = {
    userDirs = {
      enable = true;
      publicShare = null;
      templates = null;
      desktop = null;
      # extraConfig = {
      #   XDG_APPLICATIONS_DIR = "${config.home.homeDirectory}/Applications";
      #   XDG_SCREENSHOTS_DIR = "${config.home.homeDirectory}/Pictures/Screenshots";
      #   XDG_WALLPAPERS_DIR = "${config.home.homeDirectory}/Pictures/Wallpapers";
      # };
    };
  };
}