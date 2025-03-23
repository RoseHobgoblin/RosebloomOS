{
  config,
  lib,
  pkgs,
  ...
}: { 
  services.greetd = {
    enable = true;
    settings = {
      default_session.command = ''
      ${pkgs.greetd.tuigreet}/bin/tuigreet \
      --time \
      --asterisks \
      --user-menu \
      --theme border=red;text=red;prompt=red;time=red;action=red;button=red;container=black;input=white \
      --cmd Hyprland
      '';
    };
  };
}

