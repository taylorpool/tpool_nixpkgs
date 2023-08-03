{ lib, stdenv, cmake }:
stdenv.mkDerivation {
  pname = "lz4";
  version = "1.9.4";

  src = builtins.fetchTarball "https://github.com/lz4/lz4/archive/refs/tags/v1.9.4.tar.gz";

  nativeBuildInputs = [
    cmake
  ];

  preConfigure = ''
    cd build/cmake
  '';

  meta = with lib; {
    description = "Extremely fast compression library";
  };
}
