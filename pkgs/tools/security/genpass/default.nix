{
  lib,
  fetchgit,
  rustPlatform,
  zlib,
}:
rustPlatform.buildRustPackage rec {
  pname = "genpass";
  version = "0.5.1";

  src = fetchgit {
    url = "https://git.sr.ht/~cyplo/genpass";
    rev = "v${version}";
    sha256 = "UyEgOlKtDyneRteN3jHA2BJlu5U1HFL8HA2MTQz5rns=";
  };

  cargoHash = "sha256-ls3tzZ+gtZQlObmbtwJDq6N/f5nY+Ps7RL5R/fR5Vgg=";

  buildInputs = [
    zlib
  ];

  meta = with lib; {
    description = "Simple yet robust commandline random password generator";
    mainProgram = "genpass";
    homepage = "https://sr.ht/~cyplo/genpass/";
    license = licenses.agpl3Only;
    maintainers = with maintainers; [ cyplo ];
  };
}
