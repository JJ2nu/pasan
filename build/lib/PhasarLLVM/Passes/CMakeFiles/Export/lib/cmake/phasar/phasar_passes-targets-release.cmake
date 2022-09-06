#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "phasar::phasar_passes" for configuration "Release"
set_property(TARGET phasar::phasar_passes APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(phasar::phasar_passes PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "LLVM"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/phasar/libphasar_passes.so"
  IMPORTED_SONAME_RELEASE "libphasar_passes.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS phasar::phasar_passes )
list(APPEND _IMPORT_CHECK_FILES_FOR_phasar::phasar_passes "${_IMPORT_PREFIX}/lib/phasar/libphasar_passes.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
