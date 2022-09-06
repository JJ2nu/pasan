#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "phasar::phasar_experimental" for configuration "Release"
set_property(TARGET phasar::phasar_experimental APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(phasar::phasar_experimental PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/phasar/libphasar_experimental.so"
  IMPORTED_SONAME_RELEASE "libphasar_experimental.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS phasar::phasar_experimental )
list(APPEND _IMPORT_CHECK_FILES_FOR_phasar::phasar_experimental "${_IMPORT_PREFIX}/lib/phasar/libphasar_experimental.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
