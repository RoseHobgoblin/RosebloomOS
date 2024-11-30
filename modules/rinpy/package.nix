{ lib
, python3Packages
, fetchFromGitHub
,
}:

python3Packages.buildPythonApplication rec {
  pname = "ammo";
  version = "0.1.0"; 
  src = fetchFromGitHub {
    owner = "Ydmir";
    repo = "rinpy";
    rev = "28fa1fc5dd3195cae7a9247aab55b9b34fd3530b"; 
    sha256 = "1h96jcd706vzbwdpjra17ninjwdp5k4zry1casz55fpc7y21rndz";
  };

    pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
    	autoPatchelfHook
    ];
    buildInputs = with pkgs; [
    	zlib
    ];
}

  meta = with lib; {
    description = "A Simple Terminal-Based Mod Organizer for Linux"; 
    homepage = "https://github.com/cyberrumor/ammo";
    license = licenses.gpl2;  
    maintainers = with maintainers; [ RoseHobgoblin ];
    platforms = platforms.all;
  };
}