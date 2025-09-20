{ config, pkgs, lib, ... }: 
{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
      };
      grub = {
        efiSupport = true;
        #efiInstallAsRemovable = true; # in case canTouchEfiVariables doesn't work for your system
        device = "nodev";
        useOSProber = true;
        configurationLimit = 3;
        gfxmodeEfi = "1920x1080";
        gfxpayloadEfi = "keep";
      };
    };
    plymouth = {
      enable = true;
      theme = "bgrt"; 
      #logo = pkgs.fetchurl {
        #url = "https://raw.githubusercontent.com/RoseHobgoblin/RosebloomOS/main/assets/RosebloomEmblem.png";
        #sha256 = "0xdfjhplmg5qgnjmr70y93b5fza9kpzfcxhgmkn9sz52vlc5v195";
      #};
    };
    # Enable "Silent Boot"
    consoleLogLevel = 0;
    initrd.verbose = false;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "ipv6.disable=1"
    ];
  };
}

