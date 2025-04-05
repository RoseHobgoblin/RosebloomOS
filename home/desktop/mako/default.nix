{ pkgs, config, theme, ... }: {
  services.mako = with theme.colors; {
    enable = true;

    #Sweet
    #backgroundColor = "#0C0E14";
    #font = "M+1 Nerd Font 10";
    #textColor = "#c3c7d1";
    #borderColor = "#C74DED";

    #Rose Pine
    #backgroundColor = "#1f1d2e";
    #font = "M+1 Nerd Font 10";
    #textColor = "#e0def4";
    #borderColor = "#524f67";

    #Signalis
    backgroundColor = primary.background;
    font = "M+1 Nerd Font 10";
    textColor = "#FFFFFF";
    borderColor = "#00DEFF";
    borderSize = 2;
    width = 400;
    height = 600;
    maxVisible = 5;
  };
}

