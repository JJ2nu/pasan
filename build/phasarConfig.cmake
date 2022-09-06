set(PHASAR_VERSION 1.0.0)


####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################
set_and_check(PHASAR_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")

foreach(component ${phasar_FIND_COMPONENTS})
  include("${CMAKE_CURRENT_LIST_DIR}/phasar_${component}-config.cmake")
  include("${CMAKE_CURRENT_LIST_DIR}/phasar_${component}-targets.cmake")
endforeach()

function(phasar_config executable)
  find_package(LLVM 14 REQUIRED CONFIG)
  include_directories(${LLVM_INCLUDE_DIRS})
  link_directories(${LLVM_LIB_PATH} ${LLVM_LIBRARY_DIRS})
  find_library(LLVM_LIBRARY NAMES LLVM HINTS ${LLVM_LIBRARY_DIRS})
  if(NOT ${LLVM_LIBRARY} STREQUAL "LLVM_LIBRARY-NOTFOUND")
    llvm_config(${executable} USE_SHARED ${PHASAR_LLVM_DEPS})
  else()
    llvm_config(${executable} ${PHASAR_LLVM_DEPS})
  endif()
  list(REMOVE_DUPLICATES PHASAR_NEEDED_LIBS)
  target_link_libraries(${executable}
    PUBLIC
    ${PHASAR_NEEDED_LIBS}
    )
endfunction()
