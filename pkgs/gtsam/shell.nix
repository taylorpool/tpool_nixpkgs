{ nixpkgs ? import ../../version.nix }:
nixpkgs.callPackage ./. {}
