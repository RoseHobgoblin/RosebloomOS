{ inputs, config, pkgs, self, ... }:
{
  home.packages = with pkgs; [
    #gradience
    #adw-gtk3
    #sweet-nova
  ];
    
  gtk = {
    enable = true;
    #theme.name = "adw-gtk3";
    #theme.package = pkgs.adw-gtk3;
    #theme.name = "Sweet-Dark";
    #theme.package = pkgs.sweet;
     theme.name = "Colloid-Dark";
     theme.package = pkgs.colloid-gtk-theme.override {
         colorVariants = ["dark"];
         themeVariants = ["purple"];
         #sizeVariants = [""];
       };
     cursorTheme = {
      name = "Sweet-cursors";
      size = 16;
      package = pkgs.sweet-nova;
    };
    iconTheme.name = "candy-icons";
    iconTheme.package = pkgs.candy-icons;
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style = {
      name = "kvantum";
    };
  };

}