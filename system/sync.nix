{
  config,
  lib,
  pkgs,
  ...
}: { services.syncthing = {
    enable = true;
    dataDir = "/home/rosa";
    openDefaultPorts = true;
    configDir = "/home/rosa/.config/syncthing";
    user = "rosa";
    group = "users";
    guiAddress = "0.0.0.0:8384";
    settings = {
      devices = {
        "Renan" = {
          id = "RTDXHLB-LPS2OEU-JTO6U63-RXWULPZ-7B6MPBH-MYBPYUL-OFP7ATO-Y2KC2Q7";
        };
      };
      folders = {
        "2ze7q-vrycu" = {
          label = "Projects";
          path = "/home/rosa/Sync/01_Projects/";
          # Share with these devices
          devices = [
            "Renan"
          ];
        };
        "55fno-sphyy" = {
          label = "Academia";
          path = "/home/rosa/Sync/02_Academia/";
          # Share with these devices
          devices = [
            "Renan"
          ];
        };
        "bso3l-ankrg" = {
          label = "Media";
          path = "/home/rosa/Sync/03_Media/";
          # Share with these devices
          devices = [
            "Renan"
          ];
        };
        "vfrp5-ggyda" = {
          label = "Archive";
          path = "/home/rosa/Sync/04_Archive/";
          # Share with these devices
          devices = [
            "Renan"
          ];
        };
        "ygrsa-gnuhx" = {
          label = "Resources";
          path = "/home/rosa/Sync/05_Resources/";
          # Share with these devices
          devices = [
            "Renan"
          ];
        };
        "ewdey-vdjmf" = {
          label = "Hentai";
          path = "/home/rosa/Sync/06_Hentai/";
          # Share with these devices
          devices = [
            "Renan"
          ];
        };
      };
    };
  };
}