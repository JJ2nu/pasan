# Install script for directory: /home/jinu/Desktop/phasar/tools/example-tool

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/myphasartool" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/myphasartool")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/myphasartool"
         RPATH "/usr/local/lib/phasar")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/jinu/Desktop/phasar/build/tools/example-tool/myphasartool")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/myphasartool" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/myphasartool")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/myphasartool"
         OLD_RPATH "/home/jinu/Desktop/phasar/build/lib/Controller:/home/jinu/Desktop/phasar/build/lib/Experimental:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/DataFlowSolver/IfdsIde:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/DataFlowSolver/Mono:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/ControlFlow:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/TaintConfig:/home/jinu/Desktop/phasar/build/external/json-schema-validator:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/Pointer:/home/jinu/Desktop/phasar/build/lib/DB:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/Passes:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/TypeHierarchy:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/Utils:/home/jinu/Desktop/phasar/build/lib/Utils:/home/jinu/Desktop/phasar/build/lib/Config:/home/jinu/Desktop/phasar/build/lib/PhasarLLVM/AnalysisStrategy:"
         NEW_RPATH "/usr/local/lib/phasar")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/local/llvm-14/bin/llvm-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/myphasartool")
    endif()
  endif()
endif()

