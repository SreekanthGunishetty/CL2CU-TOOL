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
include tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/depend.make

# Include the progress variables for this target.
include tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/progress.make

# Include the compile flags for this target's objects.
include tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/flags.make

tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/ClangFormat.cpp.o: tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/flags.make
tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/ClangFormat.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/clang-format/ClangFormat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/ClangFormat.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/clang-format && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clang-format.dir/ClangFormat.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/clang-format/ClangFormat.cpp

tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/ClangFormat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clang-format.dir/ClangFormat.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/clang-format && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/clang-format/ClangFormat.cpp > CMakeFiles/clang-format.dir/ClangFormat.cpp.i

tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/ClangFormat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clang-format.dir/ClangFormat.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/clang-format && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/clang-format/ClangFormat.cpp -o CMakeFiles/clang-format.dir/ClangFormat.cpp.s

# Object files for target clang-format
clang__format_OBJECTS = \
"CMakeFiles/clang-format.dir/ClangFormat.cpp.o"

# External object files for target clang-format
clang__format_EXTERNAL_OBJECTS =

bin/clang-format: tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/ClangFormat.cpp.o
bin/clang-format: tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/build.make
bin/clang-format: lib/libLLVMSupport.a
bin/clang-format: lib/libclangFormat.a
bin/clang-format: lib/libclangTooling.a
bin/clang-format: lib/libclangBasic.a
bin/clang-format: lib/libclangRewriteFrontend.a
bin/clang-format: lib/libclangFrontend.a
bin/clang-format: lib/libclangDriver.a
bin/clang-format: lib/libLLVMOption.a
bin/clang-format: lib/libclangSerialization.a
bin/clang-format: lib/libLLVMBitReader.a
bin/clang-format: lib/libclangASTMatchers.a
bin/clang-format: lib/libclangRewriteCore.a
bin/clang-format: lib/libclangParse.a
bin/clang-format: lib/libclangSema.a
bin/clang-format: lib/libclangEdit.a
bin/clang-format: lib/libLLVMAArch64AsmParser.a
bin/clang-format: lib/libLLVMAArch64Disassembler.a
bin/clang-format: lib/libLLVMARMCodeGen.a
bin/clang-format: lib/libLLVMARMAsmParser.a
bin/clang-format: lib/libLLVMARMDisassembler.a
bin/clang-format: lib/libLLVMCppBackendCodeGen.a
bin/clang-format: lib/libLLVMHexagonCodeGen.a
bin/clang-format: lib/libLLVMMipsCodeGen.a
bin/clang-format: lib/libLLVMMipsAsmParser.a
bin/clang-format: lib/libLLVMMipsDisassembler.a
bin/clang-format: lib/libLLVMMSP430CodeGen.a
bin/clang-format: lib/libLLVMNVPTXCodeGen.a
bin/clang-format: lib/libLLVMPowerPCCodeGen.a
bin/clang-format: lib/libLLVMPowerPCAsmParser.a
bin/clang-format: lib/libLLVMR600CodeGen.a
bin/clang-format: lib/libLLVMSparcCodeGen.a
bin/clang-format: lib/libLLVMSystemZCodeGen.a
bin/clang-format: lib/libLLVMSystemZAsmParser.a
bin/clang-format: lib/libLLVMSystemZDisassembler.a
bin/clang-format: lib/libLLVMX86CodeGen.a
bin/clang-format: lib/libLLVMX86AsmParser.a
bin/clang-format: lib/libLLVMX86Disassembler.a
bin/clang-format: lib/libLLVMXCoreCodeGen.a
bin/clang-format: lib/libLLVMXCoreDisassembler.a
bin/clang-format: lib/libLLVMAsmParser.a
bin/clang-format: lib/libLLVMAArch64CodeGen.a
bin/clang-format: lib/libLLVMARMDesc.a
bin/clang-format: lib/libLLVMCppBackendInfo.a
bin/clang-format: lib/libLLVMHexagonAsmPrinter.a
bin/clang-format: lib/libLLVMMipsDesc.a
bin/clang-format: lib/libLLVMMSP430Desc.a
bin/clang-format: lib/libLLVMNVPTXDesc.a
bin/clang-format: lib/libLLVMPowerPCDesc.a
bin/clang-format: lib/libLLVMR600Desc.a
bin/clang-format: lib/libLLVMSparcDesc.a
bin/clang-format: lib/libLLVMSystemZDesc.a
bin/clang-format: lib/libLLVMX86Desc.a
bin/clang-format: lib/libLLVMXCoreDesc.a
bin/clang-format: lib/libLLVMAArch64Desc.a
bin/clang-format: lib/libLLVMAsmPrinter.a
bin/clang-format: lib/libLLVMSelectionDAG.a
bin/clang-format: lib/libLLVMARMAsmPrinter.a
bin/clang-format: lib/libLLVMARMInfo.a
bin/clang-format: lib/libLLVMHexagonDesc.a
bin/clang-format: lib/libLLVMMipsAsmPrinter.a
bin/clang-format: lib/libLLVMMipsInfo.a
bin/clang-format: lib/libLLVMMSP430AsmPrinter.a
bin/clang-format: lib/libLLVMMSP430Info.a
bin/clang-format: lib/libLLVMNVPTXAsmPrinter.a
bin/clang-format: lib/libLLVMNVPTXInfo.a
bin/clang-format: lib/libLLVMPowerPCAsmPrinter.a
bin/clang-format: lib/libLLVMPowerPCInfo.a
bin/clang-format: lib/libLLVMR600AsmPrinter.a
bin/clang-format: lib/libLLVMR600Info.a
bin/clang-format: lib/libLLVMSparcInfo.a
bin/clang-format: lib/libLLVMSystemZAsmPrinter.a
bin/clang-format: lib/libLLVMSystemZInfo.a
bin/clang-format: lib/libLLVMX86AsmPrinter.a
bin/clang-format: lib/libLLVMX86Info.a
bin/clang-format: lib/libLLVMXCoreAsmPrinter.a
bin/clang-format: lib/libLLVMXCoreInfo.a
bin/clang-format: lib/libLLVMAArch64AsmPrinter.a
bin/clang-format: lib/libLLVMAArch64Info.a
bin/clang-format: lib/libLLVMMCParser.a
bin/clang-format: lib/libLLVMCodeGen.a
bin/clang-format: lib/libLLVMHexagonInfo.a
bin/clang-format: lib/libLLVMX86Utils.a
bin/clang-format: lib/libLLVMAArch64Utils.a
bin/clang-format: lib/libLLVMObjCARCOpts.a
bin/clang-format: lib/libLLVMScalarOpts.a
bin/clang-format: lib/libLLVMInstCombine.a
bin/clang-format: lib/libLLVMTransformUtils.a
bin/clang-format: lib/libLLVMipa.a
bin/clang-format: lib/libLLVMAnalysis.a
bin/clang-format: lib/libLLVMTarget.a
bin/clang-format: lib/libLLVMCore.a
bin/clang-format: lib/libclangAnalysis.a
bin/clang-format: lib/libclangAST.a
bin/clang-format: lib/libclangLex.a
bin/clang-format: lib/libclangBasic.a
bin/clang-format: lib/libLLVMMC.a
bin/clang-format: lib/libLLVMObject.a
bin/clang-format: lib/libLLVMSupport.a
bin/clang-format: tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/clang-format"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/clang-format && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clang-format.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/build: bin/clang-format

.PHONY : tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/build

tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/clang-format && $(CMAKE_COMMAND) -P CMakeFiles/clang-format.dir/cmake_clean.cmake
.PHONY : tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/clean

tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/clang-format /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/clang-format /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/tools/clang-format/CMakeFiles/clang-format.dir/depend

