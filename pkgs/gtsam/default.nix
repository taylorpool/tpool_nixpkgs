{ lib, stdenv, boost, cmake, eigen, ninja, tbb }:
stdenv.mkDerivation {
  pname = "gtsam";
  version = "4.1.1";
  src = builtins.fetchTarball "https://github.com/borglab/gtsam/archive/refs/tags/4.1.1.tar.gz";

  nativeBuildInputs = [
    cmake
    ninja
  ];
  cmakeFlags = [
    "-DCMAKE_BUILD_TYPE=Release -DGTSAM_USE_SYSTEM_EIGEN=ON -DGTSAM_WITH_TBB=ON -G Ninja"
  ];
  propagatedBuildInputs = [
    eigen
    boost
    tbb
  ];
  doCheck = true;

  meta = with lib; {
    description = "Factor Graphs for Sensor Fusion in Robotics";
    longDescription = "C++ library that implements sensor fusion for robotics and computer vision applications, including SLAM (Simultaneous Localization and Mapping), VO (Visual Odometry), and SFM (Structure from Motion). It uses factor graphs and Bayes networks as the underlying computing paradigm rather than sparse matrices to optimize for the most probable configuration or an optimal plan. Coupled with a capable sensor front-end (not provided here), GTSAM powers many impressive autonomous systems, in both academia and industry.";
    homepage = "https://gtsam.org";
    license = licenses.bsd3;
  };
}