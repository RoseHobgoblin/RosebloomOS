{ inputs, config, ... }:
{

  home = {
    username = "rosa";
    homeDirectory = "/home/rosa";
  };
  imports = [
    ./packages.nix
  ];
  home.stateVersion = "24.05";
}