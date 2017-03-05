# Install script for directory: /Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen_install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/Cholesky/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/CholmodSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/Core/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/Eigen2Support/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/Eigenvalues/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/Geometry/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/Householder/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/IterativeLinearSolvers/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/Jacobi/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/LU/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/MetisSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/OrderingMethods/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/PaStiXSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/PardisoSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/QR/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/SPQRSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/SVD/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/SparseCholesky/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/SparseCore/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/SparseLU/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/SparseQR/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/StlSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/SuperLUSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/UmfPackSupport/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/misc/cmake_install.cmake")
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/plugins/cmake_install.cmake")

endif()

