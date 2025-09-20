{ pkgs, config, theme, ... }: {
  services.mako = {
    enable = true;
    settings = {
      backgroundColor = "#${theme.background0}";
      font = "M+1 Nerd Font 10";
      textColor =  "#${theme.foreground}";
      borderColor =  "#${theme.secondary}";
      borderSize = 2;
      width = 400;
      height = 600;
      maxVisible = 5;
    };    
  };
}

