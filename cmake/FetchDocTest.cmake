#******************* Copyright © 2023-2025 Jonathon Bell. All rights reserved.
#**
#**
#**  Version : $Header:$
#**
#**
#**  Purpose : CMake FetchModule script for the DocTest external project.
#**
#**
#**  See Also: https://cmake.org/cmake/help/latest/module/FetchContent.html#fetchcontent
#**            for more on the FetchContent command.
#**
#**            https://github.com/cambridgesemantics/doctest
#**            for more on the DocTest project.
#**                                                                     0-0
#**                                                                   (| v |)
#***********************************************************************w*w***

include(FetchContent)

#*****************************************************************************

FetchContent_Declare(DocTest
  GIT_REPOSITORY  https://github.com/cambridgesemantics/doctest.git
  GIT_TAG         f9a654bb00de7bc0d49dc59863bee504bc4dd897 # v2.4.12.1
)

FetchContent_MakeAvailable(DocTest)

#*****************************************************************************
