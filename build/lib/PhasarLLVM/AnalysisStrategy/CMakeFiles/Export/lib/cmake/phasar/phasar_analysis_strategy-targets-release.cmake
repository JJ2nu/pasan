#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "phasar::phasar_analysis_strategy" for configuration "Release"
set_property(TARGET phasar::phasar_analysis_strategy APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(phasar::phasar_analysis_strategy PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "LLVM"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/phasar/libphasar_analysis_strategy.so"
  IMPORTED_SONAME_RELEASE "libphasar_analysis_strategy.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS phasar::phasar_analysis_strategy )
list(APPEND _IMPORT_CHECK_FILES_FOR_phasar::phasar_analysis_strategy "${_IMPORT_PREFIX}/lib/phasar/libphasar_analysis_strategy.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
