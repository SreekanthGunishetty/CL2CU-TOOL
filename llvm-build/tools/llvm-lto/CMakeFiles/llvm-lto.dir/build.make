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
include tools/llvm-lto/CMakeFiles/llvm-lto.dir/depend.make

# Include the progress variables for this target.
include tools/llvm-lto/CMakeFiles/llvm-lto.dir/progress.make

# Include the compile flags for this target's objects.
include tools/llvm-lto/CMakeFiles/llvm-lto.dir/flags.make

tools/llvm-lto/CMakeFiles/llvm-lto.dir/llvm-lto.cpp.o: tools/llvm-lto/CMakeFiles/llvm-lto.dir/flags.make
tools/llvm-lto/CMakeFiles/llvm-lto.dir/llvm-lto.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-lto/llvm-lto.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/llvm-lto/CMakeFiles/llvm-lto.dir/llvm-lto.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/llvm-lto.dir/llvm-lto.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-lto/llvm-lto.cpp

tools/llvm-lto/CMakeFiles/llvm-lto.dir/llvm-lto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-lto.dir/llvm-lto.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-lto/llvm-lto.cpp > CMakeFiles/llvm-lto.dir/llvm-lto.cpp.i

tools/llvm-lto/CMakeFiles/llvm-lto.dir/llvm-lto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-lto.dir/llvm-lto.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-lto/llvm-lto.cpp -o CMakeFiles/llvm-lto.dir/llvm-lto.cpp.s

# Object files for target llvm-lto
llvm__lto_OBJECTS = \
"CMakeFiles/llvm-lto.dir/llvm-lto.cpp.o"

# External object files for target llvm-lto
llvm__lto_EXTERNAL_OBJECTS =

bin/llvm-lto: tools/llvm-lto/CMakeFiles/llvm-lto.dir/llvm-lto.cpp.o
bin/llvm-lto: tools/llvm-lto/CMakeFiles/llvm-lto.dir/build.make
bin/llvm-lto: lib/libLLVMAArch64AsmParser.a
bin/llvm-lto: lib/libLLVMAArch64Disassembler.a
bin/llvm-lto: lib/libLLVMARMCodeGen.a
bin/llvm-lto: lib/libLLVMARMAsmParser.a
bin/llvm-lto: lib/libLLVMARMDisassembler.a
bin/llvm-lto: lib/libLLVMCppBackendCodeGen.a
bin/llvm-lto: lib/libLLVMHexagonCodeGen.a
bin/llvm-lto: lib/libLLVMMipsCodeGen.a
bin/llvm-lto: lib/libLLVMMipsAsmParser.a
bin/llvm-lto: lib/libLLVMMipsDisassembler.a
bin/llvm-lto: lib/libLLVMMSP430CodeGen.a
bin/llvm-lto: lib/libLLVMNVPTXCodeGen.a
bin/llvm-lto: lib/libLLVMPowerPCCodeGen.a
bin/llvm-lto: lib/libLLVMPowerPCAsmParser.a
bin/llvm-lto: lib/libLLVMR600CodeGen.a
bin/llvm-lto: lib/libLLVMSparcCodeGen.a
bin/llvm-lto: lib/libLLVMSystemZCodeGen.a
bin/llvm-lto: lib/libLLVMSystemZAsmParser.a
bin/llvm-lto: lib/libLLVMSystemZDisassembler.a
bin/llvm-lto: lib/libLLVMX86CodeGen.a
bin/llvm-lto: lib/libLLVMX86AsmParser.a
bin/llvm-lto: lib/libLLVMX86Disassembler.a
bin/llvm-lto: lib/libLLVMXCoreCodeGen.a
bin/llvm-lto: lib/libLLVMXCoreDisassembler.a
bin/llvm-lto: lib/libLLVMLTO.a
bin/llvm-lto: lib/libLLVMAArch64CodeGen.a
bin/llvm-lto: lib/libLLVMARMDesc.a
bin/llvm-lto: lib/libLLVMCppBackendInfo.a
bin/llvm-lto: lib/libLLVMHexagonAsmPrinter.a
bin/llvm-lto: lib/libLLVMMipsDesc.a
bin/llvm-lto: lib/libLLVMMSP430Desc.a
bin/llvm-lto: lib/libLLVMNVPTXDesc.a
bin/llvm-lto: lib/libLLVMPowerPCDesc.a
bin/llvm-lto: lib/libLLVMR600Desc.a
bin/llvm-lto: lib/libLLVMSparcDesc.a
bin/llvm-lto: lib/libLLVMSystemZDesc.a
bin/llvm-lto: lib/libLLVMX86Desc.a
bin/llvm-lto: lib/libLLVMXCoreDesc.a
bin/llvm-lto: lib/libLLVMBitReader.a
bin/llvm-lto: lib/libLLVMBitWriter.a
bin/llvm-lto: lib/libLLVMLinker.a
bin/llvm-lto: lib/libLLVMipo.a
bin/llvm-lto: lib/libLLVMAArch64Desc.a
bin/llvm-lto: lib/libLLVMAsmPrinter.a
bin/llvm-lto: lib/libLLVMSelectionDAG.a
bin/llvm-lto: lib/libLLVMARMAsmPrinter.a
bin/llvm-lto: lib/libLLVMARMInfo.a
bin/llvm-lto: lib/libLLVMHexagonDesc.a
bin/llvm-lto: lib/libLLVMMipsAsmPrinter.a
bin/llvm-lto: lib/libLLVMMipsInfo.a
bin/llvm-lto: lib/libLLVMMSP430AsmPrinter.a
bin/llvm-lto: lib/libLLVMMSP430Info.a
bin/llvm-lto: lib/libLLVMNVPTXAsmPrinter.a
bin/llvm-lto: lib/libLLVMNVPTXInfo.a
bin/llvm-lto: lib/libLLVMPowerPCAsmPrinter.a
bin/llvm-lto: lib/libLLVMPowerPCInfo.a
bin/llvm-lto: lib/libLLVMR600AsmPrinter.a
bin/llvm-lto: lib/libLLVMR600Info.a
bin/llvm-lto: lib/libLLVMSparcInfo.a
bin/llvm-lto: lib/libLLVMSystemZAsmPrinter.a
bin/llvm-lto: lib/libLLVMSystemZInfo.a
bin/llvm-lto: lib/libLLVMX86AsmPrinter.a
bin/llvm-lto: lib/libLLVMX86Info.a
bin/llvm-lto: lib/libLLVMXCoreAsmPrinter.a
bin/llvm-lto: lib/libLLVMXCoreInfo.a
bin/llvm-lto: lib/libLLVMVectorize.a
bin/llvm-lto: lib/libLLVMAArch64AsmPrinter.a
bin/llvm-lto: lib/libLLVMAArch64Info.a
bin/llvm-lto: lib/libLLVMMCParser.a
bin/llvm-lto: lib/libLLVMCodeGen.a
bin/llvm-lto: lib/libLLVMHexagonInfo.a
bin/llvm-lto: lib/libLLVMX86Utils.a
bin/llvm-lto: lib/libLLVMAArch64Utils.a
bin/llvm-lto: lib/libLLVMObjCARCOpts.a
bin/llvm-lto: lib/libLLVMScalarOpts.a
bin/llvm-lto: lib/libLLVMInstCombine.a
bin/llvm-lto: lib/libLLVMTransformUtils.a
bin/llvm-lto: lib/libLLVMipa.a
bin/llvm-lto: lib/libLLVMAnalysis.a
bin/llvm-lto: lib/libLLVMTarget.a
bin/llvm-lto: lib/libLLVMCore.a
bin/llvm-lto: lib/libLLVMMC.a
bin/llvm-lto: lib/libLLVMObject.a
bin/llvm-lto: lib/libLLVMSupport.a
bin/llvm-lto: tools/llvm-lto/CMakeFiles/llvm-lto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llvm-lto"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llvm-lto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/llvm-lto/CMakeFiles/llvm-lto.dir/build: bin/llvm-lto

.PHONY : tools/llvm-lto/CMakeFiles/llvm-lto.dir/build

tools/llvm-lto/CMakeFiles/llvm-lto.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto && $(CMAKE_COMMAND) -P CMakeFiles/llvm-lto.dir/cmake_clean.cmake
.PHONY : tools/llvm-lto/CMakeFiles/llvm-lto.dir/clean

tools/llvm-lto/CMakeFiles/llvm-lto.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-lto /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-lto/CMakeFiles/llvm-lto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/llvm-lto/CMakeFiles/llvm-lto.dir/depend

