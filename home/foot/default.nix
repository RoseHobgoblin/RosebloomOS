{
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

      colors = {
        background = "191724";
        foreground = "e0def4";

        regular0 = "26233a";
        regular1 = "eb6f92";
        regular2 = "31748f";
        regular3 = "f6c177";  
        regular4 = "9ccfd8"; 
        regular5 = "c4a7e7";
        regular6 = "ebbcba";
        regular7 = "e0def4"; 

        bright0 = "6e6a86";
        bright1 = "eb6f92";
        bright2 = "31748f";
        bright3 = "f6c177";
        bright4 = "9ccfd8";
        bright5 = "c4a7e7";
        bright6 = "ebbcba";
        bright7 = "e0def4";
      };
      key-bindings.search-start = "Control+Shift+f";
    };
  };
}