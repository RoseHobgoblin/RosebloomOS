{ pkgs, config, theme, ... }: {
  programs.foot = {
    enable = true;
    settings = {
      main = {
	    font = "M+1Code Nerd Font Mono:size=12";
      	underline-offset = 1;
      	underline-thickness = 1;
	      box-drawings-uses-font-glyphs = true;      	
	      dpi-aware = false;
	
	      initial-window-size-pixels = "700x500";
	      pad = "12x12 center";
      };

      cursor = {
	      style = "block";
	      blink = true;
      };

      colors = { # Signalis Colours
        background = "${theme.background0}";
        foreground = "${theme.foreground}";
        
        regular0 = "${theme.regular0}";
        regular1 = "${theme.regular1}";
        regular2 = "${theme.regular2}";
        regular3 = "${theme.regular3}";
        regular4 = "${theme.regular4}";
        regular5 = "${theme.regular5}";
        regular6 = "${theme.regular6}";
        regular7 = "${theme.regular7}";

        bright0 = "${theme.bright0}";
        bright1 = "${theme.bright1}";
        bright2 = "${theme.bright2}";
        bright3 = "${theme.bright3}";
        bright4 = "${theme.bright4}";
        bright5 = "${theme.bright5}";
        bright6 = "${theme.bright6}";
        bright7 = "${theme.bright7}";
      };
      
      key-bindings.search-start = "Control+Shift+f";
    };
  };
}