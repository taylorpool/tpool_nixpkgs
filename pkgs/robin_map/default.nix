{ lib, stdenv, cmake, ninja }:
stdenv.mkDerivation {
	pname = "robin_map";
	version = "0.1.0";

	src = builtins.fetchGit {
		url = "git@github.com:Tessil/robin-map.git";
		ref = "master";
		rev = "5eace6f74c9edff8e264c2d26a85365ad9ea149c";
	};

	meta = with lib; {
		description = "";
	};
}
