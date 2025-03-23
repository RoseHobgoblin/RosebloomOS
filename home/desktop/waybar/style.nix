{theme, ...}:
  with theme.colors; 
  ''
  * {
    font-family: "Tamsyn";
    font-size: 15px;
    letter-spacing: 2px;
    border: none;
    border-radius: 0;

    }
    window#waybar {
      background: rgb(0, 0, 0);
      color: rgb(255, 255, 255);
    }
    
    #workspaces button {
      color: rgb(255, 0, 0);
    }
    
    #workspaces button.active {
      color: rgb(255, 255, 255);
    }
    
    #battery,
    #network,
    #clock,
    #wireplumber {
      padding: 0px 5px;
      font-family: "Tamsyn";
    }

    #network.wifi,
    #network.ethernet {
      color: rgb(255, 0, 0);

    }

    #wireplumber.muted {
      color: rgb(110, 106, 134);
    }
    
    #custom-dividerleft,
    #custom-dividercentre,                    
    #custom-dividerright {
      color: rgb(255, 0, 0);
      font-family: "Tamsyn";
    }
  ''    

    #}
    # rose pine
    #window#waybar {
    #  background: rgb(25, 23, 36);
    #  color: rgb(224, 222, 244);
    #}
    #network.ethernet {
    #  color: rgb(196, 167, 231);3
    #}
    # rose pine light
    # window#waybar {
    #   background: rgb(250, 244, 237);
    #   color: rgb(87, 82, 121);
    # }
    # #network.ethernet {
    #   color: rgb(144, 122, 169);

    # }
    # sweet
    #   window#waybar {
    #   background: rgb(12, 14, 20);
    #   color: rgb(195, 199, 209);
    # }
    # #network.ethernet {
    #   color: rgb(199, 77, 237); 
    # }