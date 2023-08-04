{ lib, stdenv, lz4, zstd, cmake }:
stdenv.mkDerivation {
  pname = "mcap";
  version = "0.1.0";

  src = builtins.fetchTarball "https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v1.1.0.tar.gz";

  patches = [ ./patch.txt ];

  nativeBuildInputs = [ cmake ];

  meta = with lib; {
    description = "Logging Tool";
  };

}
