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
include tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/depend.make

# Include the progress variables for this target.
include tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/progress.make

# Include the compile flags for this target's objects.
include tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/flags.make

tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.o: tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/flags.make
tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/c-arcmt-test/c-arcmt-test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/c-arcmt-test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.o   -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/c-arcmt-test/c-arcmt-test.c

tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/c-arcmt-test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/c-arcmt-test/c-arcmt-test.c > CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.i

tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/c-arcmt-test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/c-arcmt-test/c-arcmt-test.c -o CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.s

# Object files for target c-arcmt-test
c__arcmt__test_OBJECTS = \
"CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.o"

# External object files for target c-arcmt-test
c__arcmt__test_EXTERNAL_OBJECTS =

bin/c-arcmt-test: tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/c-arcmt-test.c.o
bin/c-arcmt-test: tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/build.make
bin/c-arcmt-test: lib/libLLVMMC.a
bin/c-arcmt-test: lib/libLLVMObject.a
bin/c-arcmt-test: lib/libLLVMSupport.a
bin/c-arcmt-test: lib/libclang.so.3.4
bin/c-arcmt-test: lib/libclangIndex.a
bin/c-arcmt-test: lib/libclangFormat.a
bin/c-arcmt-test: lib/libclangARCMigrate.a
bin/c-arcmt-test: lib/libclangStaticAnalyzerCheckers.a
bin/c-arcmt-test: lib/libclangStaticAnalyzerCore.a
bin/c-arcmt-test: lib/libclangTooling.a
bin/c-arcmt-test: lib/libclangRewriteFrontend.a
bin/c-arcmt-test: lib/libclangRewriteCore.a
bin/c-arcmt-test: lib/libclangFrontend.a
bin/c-arcmt-test: lib/libclangDriver.a
bin/c-arcmt-test: lib/libLLVMOption.a
bin/c-arcmt-test: lib/libclangSerialization.a
bin/c-arcmt-test: lib/libLLVMBitReader.a
bin/c-arcmt-test: lib/libclangParse.a
bin/c-arcmt-test: lib/libclangSema.a
bin/c-arcmt-test: lib/libLLVMAArch64AsmParser.a
bin/c-arcmt-test: lib/libLLVMAArch64Disassembler.a
bin/c-arcmt-test: lib/libLLVMARMCodeGen.a
bin/c-arcmt-test: lib/libLLVMARMAsmParser.a
bin/c-arcmt-test: lib/libLLVMARMDisassembler.a
bin/c-arcmt-test: lib/libLLVMCppBackendCodeGen.a
bin/c-arcmt-test: lib/libLLVMHexagonCodeGen.a
bin/c-arcmt-test: lib/libLLVMMipsCodeGen.a
bin/c-arcmt-test: lib/libLLVMMipsAsmParser.a
bin/c-arcmt-test: lib/libLLVMMipsDisassembler.a
bin/c-arcmt-test: lib/libLLVMMSP430CodeGen.a
bin/c-arcmt-test: lib/libLLVMNVPTXCodeGen.a
bin/c-arcmt-test: lib/libLLVMPowerPCCodeGen.a
bin/c-arcmt-test: lib/libLLVMPowerPCAsmParser.a
bin/c-arcmt-test: lib/libLLVMR600CodeGen.a
bin/c-arcmt-test: lib/libLLVMSparcCodeGen.a
bin/c-arcmt-test: lib/libLLVMSystemZCodeGen.a
bin/c-arcmt-test: lib/libLLVMSystemZAsmParser.a
bin/c-arcmt-test: lib/libLLVMSystemZDisassembler.a
bin/c-arcmt-test: lib/libLLVMX86CodeGen.a
bin/c-arcmt-test: lib/libLLVMX86AsmParser.a
bin/c-arcmt-test: lib/libLLVMX86Disassembler.a
bin/c-arcmt-test: lib/libLLVMXCoreCodeGen.a
bin/c-arcmt-test: lib/libLLVMXCoreDisassembler.a
bin/c-arcmt-test: lib/libLLVMAsmParser.a
bin/c-arcmt-test: lib/libLLVMAArch64CodeGen.a
bin/c-arcmt-test: lib/libLLVMARMDesc.a
bin/c-arcmt-test: lib/libLLVMCppBackendInfo.a
bin/c-arcmt-test: lib/libLLVMHexagonAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMMipsDesc.a
bin/c-arcmt-test: lib/libLLVMMSP430Desc.a
bin/c-arcmt-test: lib/libLLVMNVPTXDesc.a
bin/c-arcmt-test: lib/libLLVMPowerPCDesc.a
bin/c-arcmt-test: lib/libLLVMR600Desc.a
bin/c-arcmt-test: lib/libLLVMSparcDesc.a
bin/c-arcmt-test: lib/libLLVMSystemZDesc.a
bin/c-arcmt-test: lib/libLLVMX86Desc.a
bin/c-arcmt-test: lib/libLLVMXCoreDesc.a
bin/c-arcmt-test: lib/libLLVMAArch64Desc.a
bin/c-arcmt-test: lib/libLLVMAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMSelectionDAG.a
bin/c-arcmt-test: lib/libLLVMARMAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMARMInfo.a
bin/c-arcmt-test: lib/libLLVMHexagonDesc.a
bin/c-arcmt-test: lib/libLLVMMipsAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMMipsInfo.a
bin/c-arcmt-test: lib/libLLVMMSP430AsmPrinter.a
bin/c-arcmt-test: lib/libLLVMMSP430Info.a
bin/c-arcmt-test: lib/libLLVMNVPTXAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMNVPTXInfo.a
bin/c-arcmt-test: lib/libLLVMPowerPCAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMPowerPCInfo.a
bin/c-arcmt-test: lib/libLLVMR600AsmPrinter.a
bin/c-arcmt-test: lib/libLLVMR600Info.a
bin/c-arcmt-test: lib/libLLVMSparcInfo.a
bin/c-arcmt-test: lib/libLLVMSystemZAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMSystemZInfo.a
bin/c-arcmt-test: lib/libLLVMX86AsmPrinter.a
bin/c-arcmt-test: lib/libLLVMX86Info.a
bin/c-arcmt-test: lib/libLLVMXCoreAsmPrinter.a
bin/c-arcmt-test: lib/libLLVMXCoreInfo.a
bin/c-arcmt-test: lib/libLLVMAArch64AsmPrinter.a
bin/c-arcmt-test: lib/libLLVMAArch64Info.a
bin/c-arcmt-test: lib/libLLVMMCParser.a
bin/c-arcmt-test: lib/libLLVMCodeGen.a
bin/c-arcmt-test: lib/libLLVMHexagonInfo.a
bin/c-arcmt-test: lib/libLLVMX86Utils.a
bin/c-arcmt-test: lib/libLLVMAArch64Utils.a
bin/c-arcmt-test: lib/libLLVMObjCARCOpts.a
bin/c-arcmt-test: lib/libLLVMScalarOpts.a
bin/c-arcmt-test: lib/libLLVMInstCombine.a
bin/c-arcmt-test: lib/libLLVMTransformUtils.a
bin/c-arcmt-test: lib/libLLVMipa.a
bin/c-arcmt-test: lib/libLLVMAnalysis.a
bin/c-arcmt-test: lib/libLLVMTarget.a
bin/c-arcmt-test: lib/libLLVMCore.a
bin/c-arcmt-test: lib/libclangEdit.a
bin/c-arcmt-test: lib/libclangAnalysis.a
bin/c-arcmt-test: lib/libclangASTMatchers.a
bin/c-arcmt-test: lib/libclangAST.a
bin/c-arcmt-test: lib/libclangLex.a
bin/c-arcmt-test: lib/libclangBasic.a
bin/c-arcmt-test: lib/libLLVMMC.a
bin/c-arcmt-test: lib/libLLVMObject.a
bin/c-arcmt-test: lib/libLLVMSupport.a
bin/c-arcmt-test: tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/c-arcmt-test"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/c-arcmt-test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c-arcmt-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/build: bin/c-arcmt-test

.PHONY : tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/build

tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/c-arcmt-test && $(CMAKE_COMMAND) -P CMakeFiles/c-arcmt-test.dir/cmake_clean.cmake
.PHONY : tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/clean

tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/tools/c-arcmt-test /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/c-arcmt-test /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/tools/c-arcmt-test/CMakeFiles/c-arcmt-test.dir/depend

