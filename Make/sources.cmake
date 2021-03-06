# Top-level source list
#   - add your source directory's sources.cmake here
#
#    Copyright (c) 2009 Jason Kulk
#    This file is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This file is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

# list the project's subdirectories here:
SET(NUBOT_DIRS  NUPlatform
                Behaviour
                Localisation
                Motion
                Vision
                Tools
)

# list the top-level files here
LIST(APPEND NUBOT_SRCS  ../NUbot.cpp ../NUbot.h
)

# I will add the cmake/sources.cmake to the specified directories in NUBOT_DIRS
# NOTE: I can also put each directory on the search path INCLUDE_DIRECTORIES(../${loop_var})
INCLUDE_DIRECTORIES(../)
INCLUDE_DIRECTORIES(../Autoconfig)
FOREACH (loop_var ${NUBOT_DIRS})
    INCLUDE(../${loop_var}/cmake/sources.cmake)
ENDFOREACH (loop_var ${NUBOT_DIRS})

