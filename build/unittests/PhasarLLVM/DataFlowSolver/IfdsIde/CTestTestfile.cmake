# CMake generated Testfile for 
# Source directory: /home/jinu/Desktop/phasar/unittests/PhasarLLVM/DataFlowSolver/IfdsIde
# Build directory: /home/jinu/Desktop/phasar/build/unittests/PhasarLLVM/DataFlowSolver/IfdsIde
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(EdgeFunctionComposerTest "/home/jinu/Desktop/phasar/build/unittests/PhasarLLVM/DataFlowSolver/IfdsIde/EdgeFunctionComposerTest")
set_tests_properties(EdgeFunctionComposerTest PROPERTIES  LABELS "all" WORKING_DIRECTORY "/home/jinu/Desktop/phasar/build/unittests" _BACKTRACE_TRIPLES "/home/jinu/Desktop/phasar/cmake/phasar_macros.cmake;41;add_test;/home/jinu/Desktop/phasar/unittests/PhasarLLVM/DataFlowSolver/IfdsIde/CMakeLists.txt;8;add_phasar_unittest;/home/jinu/Desktop/phasar/unittests/PhasarLLVM/DataFlowSolver/IfdsIde/CMakeLists.txt;0;")
add_test(EdgeFunctionSingletonFactoryTest "/home/jinu/Desktop/phasar/build/unittests/PhasarLLVM/DataFlowSolver/IfdsIde/EdgeFunctionSingletonFactoryTest")
set_tests_properties(EdgeFunctionSingletonFactoryTest PROPERTIES  LABELS "all" WORKING_DIRECTORY "/home/jinu/Desktop/phasar/build/unittests" _BACKTRACE_TRIPLES "/home/jinu/Desktop/phasar/cmake/phasar_macros.cmake;41;add_test;/home/jinu/Desktop/phasar/unittests/PhasarLLVM/DataFlowSolver/IfdsIde/CMakeLists.txt;25;add_phasar_unittest;/home/jinu/Desktop/phasar/unittests/PhasarLLVM/DataFlowSolver/IfdsIde/CMakeLists.txt;0;")
subdirs("Problems")
