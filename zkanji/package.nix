{ stdenv
, fetchFromGitHub
, qt6
, libsForQt5
, lib
, libxcb
, libXtst
, xcbutil
, ... }: # Qxt to be resolved later

stdenv.mkDerivation rec {
  pname = "zkanji";
  version = "0.1.0"; 
  src = fetchFromGitHub {
    owner = "z1dev";
    repo = "zkanji";
    rev = "adb74de620ebf00d007447fdda5b6bdc76927830"; 
    sha256 = "0pvxxwppmnkdbnc5pwwbbz72849xq0akl6xm1b39xlqz6486z3wb";
  };

  buildInputs = [ qt6.qtbase qt6.qtsvg libxcb libXtst xcbutil]; 
  nativeBuildInputs = [ qt6.wrapQtAppsHook libXtst ]; 

  buildPhase = ''
  export LANG=C.UTF-8

    qmake # Or qmake2, determine the correct version for zkanji
    make
  '';

  installPhase = ''
    mkdir -p $out/bin
    mkdir -p $out/share/zkanji 
    cp -R $buildDir/zkanji $out/bin/  
    cp -R Resources $out/share/zkanji  # Assuming a 'Resources' folder
    # ... other installation steps as needed
  '';

  meta = with lib; {
    description = "A Japanese kanji learning application"; 
    homepage = "https://zkanji.sourceforge.net/";
    license = licenses.asl20;  
    maintainers = with maintainers; [ RoseHobgoblin ];
    platforms = platforms.all;
  };
}
