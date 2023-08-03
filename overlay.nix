self: super:
{
  gtsam = super.callPackage ./pkgs/gtsam {};
  lz4 = super.callPackage ./pkgs/lz4 {};
}