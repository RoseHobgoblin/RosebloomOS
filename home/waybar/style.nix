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
    }

  ''
