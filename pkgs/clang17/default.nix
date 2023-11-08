{ lib, stdenv, cmake, ninja }:
stdenv.mkDerivation {
  pname = "llvm";
  version = "17.0.4";

  src = builtins.fetchTarball "https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.4/llvm-project-17.0.4.src.tar.xz";

  nativeBuildInputs = [
    cmake
    ninja
  ];

  buildPhase = ./builder.sh;

  meta = with lib; {
    description = "llvm project";
  };
}
