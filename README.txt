
NumPDE

# Overview

This is the template code for the course NumPDE


# Requirements
  * A C++ compiler (GCC, Clang and MSVC tested).
  * cmake [optional]
  * EITHER MATLAB or Python (with numpy + matplotlib) for plotting.


# Building with CMake

We strongly recommend building the source using cmake.

## Building with cmake from the command line

In the template_code folder, first make a new build folder:

    mkdir build
    cd build

then issue cmake:

    cmake ..

You can build the whole program using

    make

## Running the executable

If you used cmake, you can now run the executables using

    ./finite_difference
	
