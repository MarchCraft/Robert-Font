{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "RobertFont";
  version = "1";

  src = ./.;

  installPhase = ''
    runHook preInstall

    install -Dm644 Robertfont-Regular.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
