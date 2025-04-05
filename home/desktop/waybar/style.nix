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
      background: rgba(0, 0, 0, 0);
      color: #${theme.foreground};
    }
    
    #workspaces button {
      background: #${theme.background0};
      color: #${theme.primary};
    }
    
    #workspaces button.active {
      color: #${theme.foreground};
    }
    
    #workspaces button.empty {
      color: rgb(128, 128, 128);
    }
    
    #battery,
    #network,
    #clock,
    #wireplumber {
      background: #${theme.background0};
      padding: 0px 5px;
      font-family: "Tamsyn";
    }

    #network.wifi,
    #network.ethernet {
      background: #${theme.background0};
      color: #${theme.primary};

    }

    #wireplumber.muted {
      background: #${theme.background0};
      color: rgb(128, 128, 128);
    }
    
    #custom-dividerleft,
    #custom-dividercentre,                    
    #custom-dividerright {
      color: #${theme.primary};
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