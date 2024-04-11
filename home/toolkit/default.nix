{ inputs, config, pkgs, self, ... }:
{

  # theming
  gtk = {
    enable = true;
    theme.name = "rose-pine";
    theme.package = pkgs.rose-pine-gtk-theme;
    cursorTheme.name = "BreezeX-RoséPine";
    cursorTheme.package = pkgs.rose-pine-cursor;
    iconTheme.name = "rose-pine";
    iconTheme.package = pkgs.rose-pine-icon-theme;
    #font.name = "source-code-pro";
    #font.package = (pkgs.nerdfonts.override { fonts = [ "SourceCodePro" ]; });
  };

  qt = {
    enable = true;
    platformTheme = "gtk3";
    style.name = "gtk2";
  };

}