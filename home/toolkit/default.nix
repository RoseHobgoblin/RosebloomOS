{ inputs, config, pkgs, self, ... }:
{
  home.packages = with pkgs; [
    (callPackage ../../modules/gradience/package.nix {})
    adw-gtk3
  ];
    
  gtk = {
    enable = true;
    #theme.name = "adw-gtk3";
    #theme.package = pkgs.adw-gtk3;
    theme.name = "rose-pine";
    theme.package = pkgs.rose-pine-gtk-theme;
    cursorTheme.name = "BreezeX-RoséPine";
    cursorTheme.package = pkgs.rose-pine-cursor;
    iconTheme.name = "rose-pine";
    iconTheme.package = pkgs.rose-pine-icon-theme;
  };

  qt = {
    enable = true;
    platformTheme = "gtk3";
    style.name = "gtk2";
  };

}