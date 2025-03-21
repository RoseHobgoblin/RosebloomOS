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

    #icon theme names are "Rose-Pine-Moon" and "Rose-Pine"
    #theme names are "RosePine-Main-B-LB", "RosePine-Main-B", "RosePine-Main-BL-LB" and "RosePine-Main-BL"
#    theme.name = "RosePine-Main-BL";
 #   theme.package = (pkgs.callPackage ./rose-pine.nix {}).gtk-theme;
  #  iconTheme.name = "Rose-Pine";
   # iconTheme.package = (pkgs.callPackage ./rose-pine.nix {}).gtk-theme;
    #cursorTheme = {
    #  name = "BreezeX-RosePine-Linux";
    #  package = pkgs.rose-pine-cursor;
    #};

    #  theme.name = "Colloid-Purple-Dark";
    #  theme.package = pkgs.colloid-gtk-theme.override {
    #      colorVariants = ["dark"];
    #      themeVariants = ["purple"];
    #      sizeVariants = ["standard"];
    #    };
    
    #theme.name = "Sweet-Dark";
    #theme.package = pkgs.sweet;
    #  cursorTheme = {
    #   name = "Sweet-cursors";
    #   size = 16;
    #   package = pkgs.sweet-nova;
    # };
    #iconTheme.name = "candy-icons";
    #iconTheme.package = pkgs.candy-icons;
  };

  qt = {
    enable = true;
    platformTheme.name = "qtct";
    style = {
      name = "kvantum";
    };
  };

}
