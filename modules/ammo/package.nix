{ lib
, python3Packages
, fetchFromGitHub
,
}:

python3Packages.buildPythonApplication rec {
  pname = "ammo";
  version = "0.1.0"; 
  src = fetchFromGitHub {
    owner = "cyberrumor";
    repo = "ammo";
    rev = "1e7647f30df5ccca2821f80880656f9f80319ec8"; 
    sha256 = "0zkq0pkqfrns38cd37k5i05gp7ig16dn2qi1pjg969855hsbw5vc";
  };

  meta = with lib; {
    description = "A Simple Terminal-Based Mod Organizer for Linux"; 
    homepage = "https://github.com/cyberrumor/ammo";
    license = licenses.gpl2;  
    maintainers = with maintainers; [ RoseHobgoblin ];
    platforms = platforms.all;
  };
}