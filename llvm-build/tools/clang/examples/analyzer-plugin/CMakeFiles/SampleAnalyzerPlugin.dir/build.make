# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anonix/new_tool/CL2CU/CU2CL/llvm-build

# Include any dependencies generated for this target.
include tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/depend.make

# Include the progress variables for this target.
include tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/progress.make

# Include the compile flags for this target's objects.
include tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/flags.make

tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.o: tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/flags.make
tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/analyzer-plugin/MainCallChecker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/analyzer-plugin && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/analyzer-plugin/MainCallChecker.cpp

tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/analyzer-plugin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/analyzer-plugin/MainCallChecker.cpp > CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.i

tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/analyzer-plugin && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/analyzer-plugin/MainCallChecker.cpp -o CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.s

# Object files for target SampleAnalyzerPlugin
SampleAnalyzerPlugin_OBJECTS = \
"CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.o"

# External object files for target SampleAnalyzerPlugin
SampleAnalyzerPlugin_EXTERNAL_OBJECTS =

lib/SampleAnalyzerPlugin.so: tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/MainCallChecker.cpp.o
lib/SampleAnalyzerPlugin.so: tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/build.make
lib/SampleAnalyzerPlugin.so: lib/libLLVMMC.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMObject.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSupport.a
lib/SampleAnalyzerPlugin.so: lib/libclangStaticAnalyzerCore.a
lib/SampleAnalyzerPlugin.so: lib/libclangFrontend.a
lib/SampleAnalyzerPlugin.so: lib/libclangDriver.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMOption.a
lib/SampleAnalyzerPlugin.so: lib/libclangSerialization.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMBitReader.a
lib/SampleAnalyzerPlugin.so: lib/libclangRewriteCore.a
lib/SampleAnalyzerPlugin.so: lib/libclangParse.a
lib/SampleAnalyzerPlugin.so: lib/libclangSema.a
lib/SampleAnalyzerPlugin.so: lib/libclangEdit.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAArch64AsmParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAArch64Disassembler.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMARMCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMARMAsmParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMARMDisassembler.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMCppBackendCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMHexagonCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMipsCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMipsAsmParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMipsDisassembler.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMSP430CodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMNVPTXCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMPowerPCCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMPowerPCAsmParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMR600CodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSparcCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSystemZCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSystemZAsmParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSystemZDisassembler.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMX86CodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMX86AsmParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMX86Disassembler.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMXCoreCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMXCoreDisassembler.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAsmParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAArch64CodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMARMDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMCppBackendInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMHexagonAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMipsDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMSP430Desc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMNVPTXDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMPowerPCDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMR600Desc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSparcDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSystemZDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMX86Desc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMXCoreDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAArch64Desc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSelectionDAG.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMARMAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMARMInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMHexagonDesc.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMipsAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMipsInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMSP430AsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMSP430Info.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMNVPTXAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMNVPTXInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMPowerPCAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMPowerPCInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMR600AsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMR600Info.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSparcInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSystemZAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSystemZInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMX86AsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMX86Info.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMXCoreAsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMXCoreInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAArch64AsmPrinter.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAArch64Info.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMCParser.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMCodeGen.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMHexagonInfo.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMX86Utils.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAArch64Utils.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMObjCARCOpts.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMScalarOpts.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMInstCombine.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMTransformUtils.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMipa.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMAnalysis.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMTarget.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMCore.a
lib/SampleAnalyzerPlugin.so: lib/libclangAnalysis.a
lib/SampleAnalyzerPlugin.so: lib/libclangAST.a
lib/SampleAnalyzerPlugin.so: lib/libclangLex.a
lib/SampleAnalyzerPlugin.so: lib/libclangBasic.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMMC.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMObject.a
lib/SampleAnalyzerPlugin.so: lib/libLLVMSupport.a
lib/SampleAnalyzerPlugin.so: tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module ../../../../lib/SampleAnalyzerPlugin.so"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/analyzer-plugin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SampleAnalyzerPlugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/build: lib/SampleAnalyzerPlugin.so

.PHONY : tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/build

tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/analyzer-plugin && $(CMAKE_COMMAND) -P CMakeFiles/SampleAnalyzerPlugin.dir/cmake_clean.cmake
.PHONY : tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/clean

tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/analyzer-plugin /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/analyzer-plugin /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/examples/analyzer-plugin/CMakeFiles/SampleAnalyzerPlugin.dir/depend

