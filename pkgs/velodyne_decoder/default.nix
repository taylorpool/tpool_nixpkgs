{pkgs}:
( import ( builtins.fetchGit {
  url = "git@bitbucket.org-cmu:tpool23/velodyne_decoder.git";
  rev = "c37ae9cc860bcfcdc61f8dccd935f27a7c7c7374";
  ref = "master";
} ) { pkgs=pkgs; } )
