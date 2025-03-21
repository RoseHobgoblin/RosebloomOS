{ lib
, python3Packages
, fetchFromGitHub
, zlib
, autoPatchelfHook
,
}:

python3Packages.buildPythonApplication rec {
  pname = "rinpy";
  version = "0.1.0"; 
  src = fetchFromGitHub {
    owner = "Ydmir";
    repo = "rinpy";
    rev = "28fa1fc5dd3195cae7a9247aab55b9b34fd3530b"; 
    sha256 = "1h96jcd706vzbwdpjra17ninjwdp5k4zry1casz55fpc7y21rndz";
  };

  propagatedBuildInputs = with python3Packages; [
    numpy
  ];


    nativeBuildInputs = [
    	autoPatchelfHook
    ];

    buildInputs = [
    	zlib
    ];
    

  meta = with lib; {
    description = "A Simple Terminal-Based Mod Organizer for Linux"; 
    homepage = "https://github.com/cyberrumor/ammo";
    license = licenses.gpl2;  
    maintainers = with maintainers; [ RoseHobgoblin ];
    platforms = platforms.all;
  };
}