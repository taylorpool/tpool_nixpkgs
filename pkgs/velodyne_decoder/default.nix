{pkgs}:
( import ( builtins.fetchGit {
  url = "git@bitbucket.org-cmu:tpool23/velodyne_decoder.git";
  rev = "211009d4fe863a9e35373807f1d523a1f0aac199";
  ref = "master";
} ) { pkgs=pkgs; } )
