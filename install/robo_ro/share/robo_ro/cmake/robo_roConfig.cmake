# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_robo_ro_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED robo_ro_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(robo_ro_FOUND FALSE)
  elseif(NOT robo_ro_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(robo_ro_FOUND FALSE)
  endif()
  return()
endif()
set(_robo_ro_CONFIG_INCLUDED TRUE)

# output package information
if(NOT robo_ro_FIND_QUIETLY)
  message(STATUS "Found robo_ro: 0.0.0 (${robo_ro_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'robo_ro' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${robo_ro_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(robo_ro_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${robo_ro_DIR}/${_extra}")
endforeach()
