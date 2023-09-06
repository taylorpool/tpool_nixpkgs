self: super:
{
  gtsam = super.callPackage ./pkgs/gtsam {};
  lz4cmake = super.callPackage ./pkgs/lz4 {};
  mcap = super.callPackage ./pkgs/mcap { lz4=self.lz4cmake; };
  velodyne_decoder = import ./pkgs/velodyne_decoder { pkgs=super; };
}