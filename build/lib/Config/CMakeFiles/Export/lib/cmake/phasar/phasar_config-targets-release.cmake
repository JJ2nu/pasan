#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "phasar::phasar_config" for configuration "Release"
set_property(TARGET phasar::phasar_config APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(phasar::phasar_config PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "LLVM"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/phasar/libphasar_config.so"
  IMPORTED_SONAME_RELEASE "libphasar_config.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS phasar::phasar_config )
list(APPEND _IMPORT_CHECK_FILES_FOR_phasar::phasar_config "${_IMPORT_PREFIX}/lib/phasar/libphasar_config.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
