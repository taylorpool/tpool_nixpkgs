{pkgs}:
( import ( builtins.fetchGit {
  url = git@bitbucket.org:tpool23/velodyne_decoder.git;
  rev = "26193f1b3cb438f34a7b854d9a788e4691111302";
  ref = "master";
} ) { pkgs=pkgs; } )
