self: super:
{
  gtsam = super.callPackage ./pkgs/gtsam {};

  lz4cmake = super.callPackage ./pkgs/lz4 {};

  mcap = super.callPackage ./pkgs/mcap { lz4=self.lz4cmake; };

  velodyne_decoder = import ./pkgs/velodyne_decoder { pkgs=super; };

  llvmPackages_17 = recurseIntoAttrs (callPackage ./pkgs/llvm17 ({
    inherit (stdenvAdapters) overrideCC;
    buildLlvmTools = buildPackages.llvmPackages_17.tools;
    targetLlvmLibraries = targetPackages.llvmPackages_17.libraries or llvmPackages_17.libraries;
    targetLlvm = targetPackages.llvmPackages_17.llvm or llvmPackages_17.llvm;
  }));

  clang-tools_17 = super.callPackage ./pkgs/clang-tools {
    llvmPackages = self.llvmPackages_17;
  };
}
