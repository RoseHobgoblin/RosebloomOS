{theme, ...}:
  with theme.colors; 
  ''
  * {
    font-family: "M+1 Nerd Font";
    border: none;
    border-radius: 0;

    }
    window#waybar {
      background: rgb(25, 23, 36);
      color: rgb(224, 222, 244);
    }
    
    #battery,
    #network,
    #clock,
    #wireplumber {
      padding: 0px 5px;
      font-family: "M+1Code Nerd Font Mono";
    }

    #network.wifi,
    #network.ethernet {
      color: rgb(196, 167, 231);

    }

    #wireplumber.muted {
      color: rgb(110, 106, 134);
    }
    
    #custom-dividerleft,
    #custom-dividercentre,                    
    #custom-dividerright {
      color: rgb(235, 111, 146);
      font-family: "M+1 Nerd Font";
    }
  ''
