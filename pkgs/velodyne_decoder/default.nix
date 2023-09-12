{pkgs}:
( import ( builtins.fetchGit {
  url = "git@bitbucket.org:tpool23/velodyne_decoder.git";
  rev = "1b05668194a0917a41e07a6e69097cea06fdab44";
  ref = "master";
} ) { pkgs=pkgs; } )
