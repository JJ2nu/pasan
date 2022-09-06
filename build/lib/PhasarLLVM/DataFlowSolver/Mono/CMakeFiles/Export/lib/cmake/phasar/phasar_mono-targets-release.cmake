#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "phasar::phasar_mono" for configuration "Release"
set_property(TARGET phasar::phasar_mono APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(phasar::phasar_mono PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "LLVM"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/phasar/libphasar_mono.so"
  IMPORTED_SONAME_RELEASE "libphasar_mono.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS phasar::phasar_mono )
list(APPEND _IMPORT_CHECK_FILES_FOR_phasar::phasar_mono "${_IMPORT_PREFIX}/lib/phasar/libphasar_mono.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
