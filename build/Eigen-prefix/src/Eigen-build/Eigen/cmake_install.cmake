# Install script for directory: /Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Array"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Cholesky"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/CholmodSupport"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Core"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Dense"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Eigen"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Eigen2Support"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Eigenvalues"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Geometry"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Householder"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/IterativeLinearSolvers"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Jacobi"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/LU"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/LeastSquares"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/MetisSupport"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/OrderingMethods"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/PaStiXSupport"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/PardisoSupport"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/QR"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/QtAlignedMalloc"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/SPQRSupport"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/SVD"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/Sparse"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/SparseCholesky"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/SparseCore"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/SparseLU"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/SparseQR"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/StdDeque"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/StdList"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/StdVector"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/SuperLUSupport"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/Eigen/UmfPackSupport"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build/Eigen/src/cmake_install.cmake")

endif()

