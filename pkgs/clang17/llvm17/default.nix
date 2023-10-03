{ lib, stdenv, cmake, ninja }:
stdenv.mkDerivation {
  pname = "llvm";
  version = "17.0.1";

  src = builtins.fetchTarball "https://github.com/llvm/llvm-project/releases/download/llvmorg-17.0.1/llvm-project-17.0.1.src.tar.xz";

  cmakeFlags = [ 
    "-DCMAKE_BUILD_TYPE=Release" "-DLLVM_ENABLE_PROJECTS=\"clang;clang-tools-extra\""
    "-DLLVM_ENABLE_RUNTIMES=\"libcxx;libcxxabi;libunwind\""
    "-DLIBCXX_ENABLE_STD_MODULES=ON"
    "-G Ninja"
    "-S ../llvm"
  ];

  meta = with lib; {
    description = "llvm project";
  };
}
