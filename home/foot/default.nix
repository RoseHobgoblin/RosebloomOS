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

      colors = { # Signalis Colours
        background = "000000";
        foreground = "e5e5e5";
        regular0 = "000000";  
        regular1 = "cd0000";  
        regular2 = "00cd00";  
        regular3 = "cdcd00";  
        regular4 = "0000ee";  
        regular5 = "cd00cd";  
        regular6 = "00cdcd";  
        regular7 = "e5e5e5";  
        bright0 = "7f7f7f";   
        bright1 = "ff0000";   
        bright2 = "00ff00";   
        bright3 = "ffff00";   
        bright4 = "5c5cff";   
        bright5 = "ff00ff";   
        bright6 = "00ffff";   
        bright7 = "ffffff";
      };

      #colors = { # Rose Pine Colours
      #  background = "191724";
     # #  foreground = "e0def4";
#
     #   regular0 = "26233a";
     #   regular1 = "eb6f92";
     #   regular2 = "31748f";
     #   regular3 = "f6c177";  
     #   regular4 = "9ccfd8"; 
     #   regular5 = "c4a7e7";
     #   regular6 = "ebbcba";
     #   regular7 = "e0def4"; 
#
     #   bright0 = "6e6a86";
     #   bright1 = "eb6f92";
     #   bright2 = "31748f";
     #   bright3 = "f6c177";
     #   bright4 = "9ccfd8";
     #   bright5 = "c4a7e7";
     #   bright6 = "ebbcba";
     #   bright7 = "e0def4";
     # };
     # # colors = { # Sweet Colours 161925
      #   background = "0C0E14";
      #   foreground = "c3c7d1";

      #   regular0 = "282c34";
      #   regular1 = "ed254e";
      #   regular2 = "71f79f";
      #   regular3 = "f9dc5c";  
      #   regular4 = "7cb7ff"; 
      #   regular5 = "c74ded";
      #   regular6 = "00c1e4";
      #   regular7 = "dcdcdd"; 

      #   bright0 = "282c34";
      #   bright1 = "ed254e";
      #   bright2 = "71f79f";
      #   bright3 = "f9dc5c";
      #   bright4 = "7cb7ff";
      #   bright5 = "c74ded";
      #   bright6 = "00c1e4";
      #   bright7 = "dcdcdd";
      # };
       key-bindings.search-start = "Control+Shift+f";
    };
  };
}