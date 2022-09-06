#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "phasar::phasar_syncpds" for configuration "Release"
set_property(TARGET phasar::phasar_syncpds APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(phasar::phasar_syncpds PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/phasar/libphasar_syncpds.so"
  IMPORTED_SONAME_RELEASE "libphasar_syncpds.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS phasar::phasar_syncpds )
list(APPEND _IMPORT_CHECK_FILES_FOR_phasar::phasar_syncpds "${_IMPORT_PREFIX}/lib/phasar/libphasar_syncpds.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
