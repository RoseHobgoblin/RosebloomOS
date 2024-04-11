{ stdenv
, lib
, fetchFromGitHub
, buildMozillaMach
, nixosTests
}:

(buildMozillaMach rec {
  pname = "mercury";
  packageVersion = "123.0.1";
  applicationName = "Mercury Browser";
  binaryName = "mercury";
  branding = "browser/branding/mercury";
  requireSigning = false;
  allowAddonSideload = true;

  src = fetchFromGitHub {
    owner = "Alex313031";
    repo = "Mercury";
    fetchSubmodules = true;
    rev = "v${packageVersion}";
    hash = "sha256-0dg6ny53fn3gr568788iwakdykln6n1z3z8kkljg3chcl3dmxnld";
  };

  extraConfigureFlags = [
    "--with-app-name=${pname}"
    "--with-app-basename=${applicationName}"
    "--with-unsigned-addon-scopes=app,system"
  ];

  updateScript = ./update.sh;

  meta = {
    description = "Compiler optimized, private Firefox fork.";
    homepage = "https://thorium.rocks/mercury/";
    maintainers = with lib.maintainers; [ RoseHobgoblin ];
    platforms = lib.platforms.unix;
    badPlatforms = lib.platforms.darwin;
    broken = stdenv.buildPlatform.is32bit; # since Firefox 60, build on 32-bit platforms fails with "out of memory".
                                           # not in `badPlatforms` because cross-compilation on 64-bit machine might work.
    maxSilent = 14400; # 4h, double the default of 7200s (c.f. #129212, #129115)
    license = lib.licenses.mpl20;
    mainProgram = "mercury";
  };
  #tests = [ nixosTests.floorp ];
})