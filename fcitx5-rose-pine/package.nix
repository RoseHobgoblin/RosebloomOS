{ stdenvNoCC
, fetchFromGitHub
, lib
}:

stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "fcitx5-rose-pine";
  version = "0.2.1";

  src = fetchFromGitHub {
    owner = "rose-pine";
    repo = "fcitx5";
    rev = "148de09929c2e2f948376bb23bc25d72006403bc";
    sha256 = "0gywb8ykb2j3zyr20w1mc3f5xfw2aw4v9b821d55w36ja753k52a";
  };

  installPhase = ''
    runHook preInstall

    for theme in rose-pine rose-pine-moon rose-pine-dawn; do
      install -Dm644 $src/$theme/arrow.png $src/$theme/radio.png -t $out/share/fcitx5/themes/$theme 
      install -Dm644 $src/$theme/theme.conf -t $out/share/fcitx5/themes/$theme
    done

    runHook postInstall

  '';

  meta = with lib; {
    description = "Fcitx5 themes based on Rosé Pine";
    homepage = "https://github.com/rose-pine/fcitx5";
    maintainers = with maintainers; [ RoseHobgoblin ];
    platforms = platforms.all;
  };
})