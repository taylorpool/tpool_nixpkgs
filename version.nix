import ( builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.05.tar.gz" ) {
  overlays = [
    ( import ( ( builtins.fetchTarball "https://github.com/lopsided98/nix-ros-overlay/archive/master.tar.gz"
    ) + "/overlay.nix" ) )
  ];
}
