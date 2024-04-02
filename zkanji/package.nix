{ lib
, stdenv
, fetchFromGitHub
, pkg-config
, xcbutil
, libxcb
, libsForQt5
, qtbase
, qtsvg
, qtx11extras
, wrapQtAppsHook
, qmake
,
}:

stdenv.mkDerivation rec {
  pname = "zkanji";
  version = "0.1.0"; 
  src = fetchFromGitHub {
    owner = "RoseHobgoblin";
    repo = "zkanji";
    rev = "1c8a62f2a38dcc58c16c9da7e656589685cdd492"; 
    sha256 = "06cqlag9lcw09i4bwmdcmzqrjr83mcbcnybaips0q53p3w4x0az7";
  };

  buildInputs = [ qtbase qtsvg libxcb xcbutil.dev qtx11extras ]; 
  nativeBuildInputs = [ wrapQtAppsHook pkg-config qmake ]; 

  preBuild = ''
  export LANG=C.UTF-8
  '';

  installPhase = '''';

  meta = with lib; {
    description = "A Japanese kanji learning application"; 
    homepage = "https://zkanji.sourceforge.net/";
    license = licenses.asl20;  
    maintainers = with maintainers; [ RoseHobgoblin ];
    platforms = platforms.all;
  };
}
