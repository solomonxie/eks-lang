#******************* Copyright © 2023-2025 Jonathon Bell. All rights reserved.
#**
#**
#**  Version : $Header:$
#**
#**
#**  Purpose : CMake FetchModule script for the RapidCheck external project.
#**
#**
#**  See Also: https://cmake.org/cmake/help/latest/module/FetchContent.html#fetchcontent
#**            for more on the FetchContent command.
#**
#**            https://github.com/cambridgesemantics/rapidcheck
#**            for more on the RapidCheck project.
#**                                                                     0-0
#**                                                                   (| v |)
#***********************************************************************w*w***

include(FetchContent)

#*****************************************************************************

FetchContent_Declare(RapidCheck
  GIT_REPOSITORY  https://github.com/cambridgesemantics/rapidcheck.git
  GIT_TAG         5f127bc5c05094496d62a6b58576c81c35c2f57c # v1.2.0
)

FetchContent_MakeAvailable(RapidCheck)

#*****************************************************************************
