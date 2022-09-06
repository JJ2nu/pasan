# Install script for directory: /home/jinu/Desktop/phasar/test/llvm_test_code/module_wise

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
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_1/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_10/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_11/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_12/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_13/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_14/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_15/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_16/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_2/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_3/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_4/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_5/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_6/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_7/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_8/cmake_install.cmake")
  include("/home/jinu/Desktop/phasar/build/test/llvm_test_code/module_wise/module_wise_9/cmake_install.cmake")

endif()

