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
include tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/depend.make

# Include the progress variables for this target.
include tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/progress.make

# Include the compile flags for this target's objects.
include tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/flags.make

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/LexerTest.cpp.o: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/flags.make
tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/LexerTest.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/LexerTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/LexerTest.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LexTests.dir/LexerTest.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/LexerTest.cpp

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/LexerTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LexTests.dir/LexerTest.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/LexerTest.cpp > CMakeFiles/LexTests.dir/LexerTest.cpp.i

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/LexerTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LexTests.dir/LexerTest.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/LexerTest.cpp -o CMakeFiles/LexTests.dir/LexerTest.cpp.s

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.o: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/flags.make
tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPCallbacksTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPCallbacksTest.cpp

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPCallbacksTest.cpp > CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.i

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPCallbacksTest.cpp -o CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.s

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.o: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/flags.make
tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPConditionalDirectiveRecordTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPConditionalDirectiveRecordTest.cpp

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPConditionalDirectiveRecordTest.cpp > CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.i

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex/PPConditionalDirectiveRecordTest.cpp -o CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.s

# Object files for target LexTests
LexTests_OBJECTS = \
"CMakeFiles/LexTests.dir/LexerTest.cpp.o" \
"CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.o" \
"CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.o"

# External object files for target LexTests
LexTests_EXTERNAL_OBJECTS =

tools/clang/unittests/Lex/LexTests: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/LexerTest.cpp.o
tools/clang/unittests/Lex/LexTests: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPCallbacksTest.cpp.o
tools/clang/unittests/Lex/LexTests: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/PPConditionalDirectiveRecordTest.cpp.o
tools/clang/unittests/Lex/LexTests: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/build.make
tools/clang/unittests/Lex/LexTests: lib/libgtest.a
tools/clang/unittests/Lex/LexTests: lib/libgtest_main.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSupport.a
tools/clang/unittests/Lex/LexTests: lib/libclangLex.a
tools/clang/unittests/Lex/LexTests: lib/libclangParse.a
tools/clang/unittests/Lex/LexTests: lib/libclangSema.a
tools/clang/unittests/Lex/LexTests: lib/libgtest.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAArch64AsmParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAArch64Disassembler.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMARMCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMARMAsmParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMARMDisassembler.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMCppBackendCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMHexagonCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMipsCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMipsAsmParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMipsDisassembler.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMSP430CodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMNVPTXCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMPowerPCCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMPowerPCAsmParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMR600CodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSparcCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSystemZCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSystemZAsmParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSystemZDisassembler.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMX86CodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMX86AsmParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMX86Disassembler.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMXCoreCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMXCoreDisassembler.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAsmParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAArch64CodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMARMDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMCppBackendInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMHexagonAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMipsDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMSP430Desc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMNVPTXDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMPowerPCDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMR600Desc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSparcDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSystemZDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMX86Desc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMXCoreDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAArch64Desc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSelectionDAG.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMARMAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMARMInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMHexagonDesc.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMipsAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMipsInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMSP430AsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMSP430Info.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMNVPTXAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMNVPTXInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMPowerPCAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMPowerPCInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMR600AsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMR600Info.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSparcInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSystemZAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSystemZInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMX86AsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMX86Info.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMXCoreAsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMXCoreInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAArch64AsmPrinter.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAArch64Info.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMCParser.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMCodeGen.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMHexagonInfo.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMX86Utils.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAArch64Utils.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMObjCARCOpts.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMScalarOpts.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMInstCombine.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMTransformUtils.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMipa.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMAnalysis.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMTarget.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMCore.a
tools/clang/unittests/Lex/LexTests: lib/libclangAnalysis.a
tools/clang/unittests/Lex/LexTests: lib/libclangEdit.a
tools/clang/unittests/Lex/LexTests: lib/libclangAST.a
tools/clang/unittests/Lex/LexTests: lib/libclangLex.a
tools/clang/unittests/Lex/LexTests: lib/libclangBasic.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMMC.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMObject.a
tools/clang/unittests/Lex/LexTests: lib/libLLVMSupport.a
tools/clang/unittests/Lex/LexTests: tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable LexTests"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LexTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/build: tools/clang/unittests/Lex/LexTests

.PHONY : tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/build

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex && $(CMAKE_COMMAND) -P CMakeFiles/LexTests.dir/cmake_clean.cmake
.PHONY : tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/clean

tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/unittests/Lex /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/unittests/Lex/CMakeFiles/LexTests.dir/depend

