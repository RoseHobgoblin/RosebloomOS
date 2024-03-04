{ inputs, config, pkgs, self, ... }:
{

  # theming
  gtk = {
    enable = true;
    theme.name = "rose-pine";
    theme.package = pkgs.rose-pine-gtk-theme;
    cursorTheme.name = "Catppuccin-Macchiato-Dark";
    cursorTheme.package = pkgs.catppuccin-cursors.macchiatoDark;
    iconTheme.name = "rose-pine";
    iconTheme.package = pkgs.rose-pine-icon-theme;
    font.name = "source-code-pro";
    font.package = (pkgs.nerdfonts.override { fonts = [ "SourceCodePro" ]; });
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "gtk2";
  };

}