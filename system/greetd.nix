{
  config,
  lib,
  ...
}: { 
  services.greetd = { let
    session = {
      user = "rosa";
      command = "${lib.getExe config.programs.hyprland.package}";
    }; in
    enable = true;
    settings = {
      default_session = session;
      initial_session = session;
    };
  };