#*********** Copyright © 2025 Solomon Xie, Jonathon Bell. All rights reserved.
#**
#**
#**  Version : $Header:$
#**
#**
#**  Purpose : CMake build script for the eks project.
#**
#**
#**  See Also: https://cmake.org/cmake/help/latest/
#**            for more on the CMake language.
#**
#**            https://crascit.com/2015/03/28/enabling-cxx11-in-cmake/
#**            for more on specifying the C++ standard.
#**
#**            https://stackoverflow.com/a/59108287
#**            for more on specifying compiler options.
#**
#**
#*****************************************************************************

cmake_minimum_required(VERSION 3.20.2)

project(eks.   VERSION 0.1.0.1 HOMEPAGE_URL "https://github.com/solomonxie/eks-lang")

#*****************************************************************************

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

include(FetchDocTest)
include(FetchRapidCheck)

find_package(Doxygen    1.9.8   REQUIRED)

set(CMAKE_CXX_STANDARD          23 )
set(CMAKE_CXX_STANDARD_REQUIRED ON )
set(CMAKE_CXX_EXTENSIONS        OFF)

enable_testing()

add_compile_options(-Wall)

#*****************************************************************************

add_library(eks-lib STATIC
  src/example.cpp)

target_link_libraries(eks-lib)

target_include_directories(eks-lib PUBLIC src)

set_target_properties(eks-lib PROPERTIES OUTPUT_NAME eks)

#*****************************************************************************

add_executable(eks
  src/eks.cpp)

target_link_libraries(eks
  eks-lib)

#*****************************************************************************

add_executable(eks-test
  test/main.cpp
  test/example.cpp)

target_link_libraries(eks-test
  eks-lib
  doctest
  rapidcheck)

#*****************************************************************************

add_test(NAME eks.example COMMAND eks-test)

#*****************************************************************************
