{ pkgs, config, theme, ... }: {
  services.mako = {
    enable = true;

    backgroundColor = "#0C0E14";
    font = "M+1 Nerd Font 10";
    textColor = "#c3c7d1";
    borderColor = "#C74DED";
    borderSize = 2;
    width = 400;
    height = 600;
    maxVisible = 5;
  };
}