# Install script for directory: /home/jinu/Desktop/phasar/test/llvm_test_code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/local/llvm-14/bin/llvm-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/TaintConfig/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/basic/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/call_graphs/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/constness/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/control_flow/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/exceptions/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/fields/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/full_constant/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/function_pointer/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/general_linear_constant/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/glibc_and_intrinsic_calls/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/globals/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/hard_cxx_problems/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/heap_model/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/inst_interaction/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/linear_constant/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/llvmIRtoSrc/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/memory_access/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/name_mangling/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/openssl/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/pointers/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/recursion/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/special_shortcuts/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/summary_generation/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/summary_reuse/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/taint_analysis/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/type_hierarchies/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/typestate_analysis_fileio/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/uninitialized_variables/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/value_annotation/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/virtual_callsites/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/vtable/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/xtaint/cmake_install.cmake")

endif()

