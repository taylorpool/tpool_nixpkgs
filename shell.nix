{ nixpkgs ? import ./version.nix }:
nixpkgs.callPackage ./pkgs/gtsam {}
