# Install script for directory: /Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen/src/MatrixFunctions" TYPE FILE FILES
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions/MatrixExponential.h"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions/MatrixFunction.h"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions/MatrixFunctionAtomic.h"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions/MatrixLogarithm.h"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions/MatrixPower.h"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions/MatrixSquareRoot.h"
    "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen/unsupported/Eigen/src/MatrixFunctions/StemFunction.h"
    )
endif()

