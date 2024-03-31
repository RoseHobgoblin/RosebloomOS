{theme, ...}: let
  rose = builtins.fetchurl rec {
    name = "Logo-${sha256}.svg";
    url = "https://raw.githubusercontent.com/RoseHobgoblin/RosebloomOS/main/assets/RosebloomLogo.png?token=GHSAT0AAAAAACO2PHIYQYRTXTPF7XYYOCCWZPCNQTQ";
    sha256 = "022f2dc731c35f394682de73d86d667df03cdbb608147971a164ccb80f799b88";
  };
  inherit (theme) x;
in
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
    #clock {
      padding: 0px 5px;
    }

    #wireplumber {
      padding: 0px 5px;
    }

    #network {
      padding: 0px 5px;
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
    }
  ''
