{ nixpkgs ? import ./version.nix, overlays ? [], ... }@args:
import nixpkgs ( args // { overlays = [ (import ./overlay.nix) ] ++overlays; })
