# EKS

## Goals

This project is a vehicle for learning about the C++ language, and maybe also some fundamentals of compiler design and implementation.

## Project Layout

To get up and running quickly, and without knowing more about just what actual libraries and executables we will need, I have made some arbitrary choices, all of which can be changed later as needed:

- *eks-lib*: a static link library that contains the bulk of the code we will write together.

- *eks-test*: a doctest-based harness that links against *eks-lib*.

- *eks*: an executable that links against _eks-lib_.

The test harnesses implements a rich command line interface, and is RapidCheck enabled.

## Prerequisites

### MacOS:

    sudo port -N install clang-20 cmake doxygen

## Building

    mkdir .bld
    cd .bld
    cmake ..
    make -j

Also:

    make help

to see a list of possible of build targets.

## Running

To run the _eks_ test harness:

    ./eks-test

To run the _eks_ executable:

    ./eks

# Contributors

- 14041622+solomonxie@users.noreply.github.com
- jonathon.bell@gmail.com
