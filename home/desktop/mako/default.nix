{ pkgs, config, theme, ... }: {
  services.mako = {
    enable = true;

    #backgroundColor = "#0C0E14";
    #font = "M+1 Nerd Font 10";
    #textColor = "#c3c7d1";
    #borderColor = "#C74DED";
    backgroundColor = "#191724";
    font = "M+1 Nerd Font 10";
    textColor = "#e0def4";
    borderColor = "#eb6f92";
    borderSize = 2;
    width = 400;
    height = 600;
    maxVisible = 5;
  };
}