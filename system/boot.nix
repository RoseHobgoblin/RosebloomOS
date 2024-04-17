{ config, ... }: 
{
  #boot.loader.systemd-boot.enable = true;
  #boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";

  boot.initrd.verbose = false;
  boot.consoleLogLevel = 0;
  boot.kernelParams = [ "quiet" "udev.log_level=0" ]; 

  boot.plymouth.enable = true;
  boot.plymouth.theme = "bgrt"; 
  boot.plymouth.logo = pkgs.fetchurl {
    url = "https://raw.githubusercontent.com/RoseHobgoblin/RosebloomOS/main/assets/RosebloomEmblem.png";
    sha256 = "0xdfjhplmg5qgnjmr70y93b5fza9kpzfcxhgmkn9sz52vlc5v195";
  }

}