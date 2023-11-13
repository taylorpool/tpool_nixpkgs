self: super:
{
  gtsam = super.callPackage ./pkgs/gtsam {};

  robin_map = super.callPackage ./pkgs/robin_map {};

  lz4cmake = super.callPackage ./pkgs/lz4 {};

  mcap = super.callPackage ./pkgs/mcap { lz4=self.lz4cmake; };

  velodyne_decoder = import ./pkgs/velodyne_decoder { pkgs=super; };
}
