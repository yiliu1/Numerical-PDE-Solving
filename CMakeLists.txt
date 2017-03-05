# Mandatory information that CMAKE needs
CMAKE_MINIMUM_REQUIRED(VERSION 2.6.0)

# Project name
PROJECT (2d_fd_porous)
INCLUDE("cmake/CommonHeader.cmake")
INCLUDE("cmake/Compiler.cmake")
# So that Visual Studio will define M_PI
ADD_DEFINITIONS(-D_USE_MATH_DEFINES)

INCLUDE_DIRECTORIES(".")
INCLUDE_DIRECTORIES("..")
INCLUDE("cmake/GetEigen.cmake")


INCLUDE_DIRECTORIES(".")
INCLUDE_DIRECTORIES("..")

SET(SRC_FD "finite_difference.cpp") # Source
ADD_EXECUTABLE(finite_difference ${SRC_FD}) 
ADD_DEPENDENCIES(finite_difference Eigen)
