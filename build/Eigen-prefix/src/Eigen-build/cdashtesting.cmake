
set(CTEST_SOURCE_DIRECTORY  "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen")
set(CTEST_BINARY_DIRECTORY  "/Users/yi/Desktop/2017 spring course/NMPDE/exercise1/series1_handout/2d-FD-porous/build/Eigen-prefix/src/Eigen-build")
set(CTEST_CMAKE_GENERATOR   "Unix Makefiles")
set(CTEST_BUILD_NAME        "darwin-15.6.0-llvm-clang++-6.1.0-sse2-64bit")
set(CTEST_SITE              "yis-MacBook-Pro-2.local")

set(MODEL Experimental)
if(${CTEST_SCRIPT_ARG} MATCHES Nightly)
  set(MODEL Nightly)
elseif(${CTEST_SCRIPT_ARG} MATCHES Continuous)
  set(MODEL Continuous)
endif()

find_program(CTEST_HG_COMMAND NAMES hg)
set(CTEST_UPDATE_COMMAND "${CTEST_HG_COMMAND}")

ctest_start(${MODEL} ${CTEST_SOURCE_DIRECTORY} ${CTEST_BINARY_DIRECTORY})

ctest_update(SOURCE "${CTEST_SOURCE_DIRECTORY}")
ctest_submit(PARTS Update Notes)

# to get CTEST_PROJECT_SUBPROJECTS definition:
include("${CTEST_SOURCE_DIRECTORY}/CTestConfig.cmake")

foreach(subproject ${CTEST_PROJECT_SUBPROJECTS})
  message("")
  message("Process ${subproject}")
  
  set_property(GLOBAL PROPERTY SubProject ${subproject})
  set_property(GLOBAL PROPERTY Label ${subproject})

  ctest_configure(BUILD ${CTEST_BINARY_DIRECTORY} SOURCE ${CTEST_SOURCE_DIRECTORY} )
  ctest_submit(PARTS Configure)

  set(CTEST_BUILD_TARGET "Build${subproject}")
  message("Build ${CTEST_BUILD_TARGET}")
  ctest_build(BUILD "${CTEST_BINARY_DIRECTORY}" APPEND)
  # builds target ${CTEST_BUILD_TARGET}
  ctest_submit(PARTS Build)

  ctest_test(BUILD "${CTEST_BINARY_DIRECTORY}" INCLUDE_LABEL "${subproject}" )
  # runs only tests that have a LABELS property matching "${subproject}"
  
  ctest_coverage(BUILD "${CTEST_BINARY_DIRECTORY}" LABELS "${subproject}" )
  
  ctest_submit(PARTS Test)
  
endforeach()
