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
include tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/depend.make

# Include the progress variables for this target.
include tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/progress.make

# Include the compile flags for this target's objects.
include tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/flags.make

tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/main.cpp.o: tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/flags.make
tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/main.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/clang-interpreter/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/main.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/clang-interpreter && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clang-interpreter.dir/main.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/clang-interpreter/main.cpp

tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clang-interpreter.dir/main.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/clang-interpreter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/clang-interpreter/main.cpp > CMakeFiles/clang-interpreter.dir/main.cpp.i

tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clang-interpreter.dir/main.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/clang-interpreter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/clang-interpreter/main.cpp -o CMakeFiles/clang-interpreter.dir/main.cpp.s

# Object files for target clang-interpreter
clang__interpreter_OBJECTS = \
"CMakeFiles/clang-interpreter.dir/main.cpp.o"

# External object files for target clang-interpreter
clang__interpreter_EXTERNAL_OBJECTS =

bin/clang-interpreter: tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/main.cpp.o
bin/clang-interpreter: tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/build.make
bin/clang-interpreter: lib/libLLVMJIT.a
bin/clang-interpreter: lib/libLLVMInterpreter.a
bin/clang-interpreter: lib/libLLVMX86CodeGen.a
bin/clang-interpreter: lib/libLLVMBitWriter.a
bin/clang-interpreter: lib/libLLVMIRReader.a
bin/clang-interpreter: lib/libLLVMipo.a
bin/clang-interpreter: lib/libLLVMLinker.a
bin/clang-interpreter: lib/libLLVMRuntimeDyld.a
bin/clang-interpreter: lib/libLLVMExecutionEngine.a
bin/clang-interpreter: lib/libLLVMAsmPrinter.a
bin/clang-interpreter: lib/libLLVMSelectionDAG.a
bin/clang-interpreter: lib/libLLVMX86Desc.a
bin/clang-interpreter: lib/libLLVMAsmParser.a
bin/clang-interpreter: lib/libLLVMBitReader.a
bin/clang-interpreter: lib/libLLVMVectorize.a
bin/clang-interpreter: lib/libLLVMMCParser.a
bin/clang-interpreter: lib/libLLVMCodeGen.a
bin/clang-interpreter: lib/libLLVMX86AsmPrinter.a
bin/clang-interpreter: lib/libLLVMX86Info.a
bin/clang-interpreter: lib/libLLVMObjCARCOpts.a
bin/clang-interpreter: lib/libLLVMScalarOpts.a
bin/clang-interpreter: lib/libLLVMX86Utils.a
bin/clang-interpreter: lib/libLLVMInstCombine.a
bin/clang-interpreter: lib/libLLVMTransformUtils.a
bin/clang-interpreter: lib/libLLVMipa.a
bin/clang-interpreter: lib/libLLVMAnalysis.a
bin/clang-interpreter: lib/libLLVMTarget.a
bin/clang-interpreter: lib/libLLVMCore.a
bin/clang-interpreter: lib/libLLVMMC.a
bin/clang-interpreter: lib/libLLVMObject.a
bin/clang-interpreter: lib/libLLVMSupport.a
bin/clang-interpreter: lib/libclangFrontend.a
bin/clang-interpreter: lib/libclangSerialization.a
bin/clang-interpreter: lib/libclangDriver.a
bin/clang-interpreter: lib/libclangCodeGen.a
bin/clang-interpreter: lib/libclangSema.a
bin/clang-interpreter: lib/libclangStaticAnalyzerFrontend.a
bin/clang-interpreter: lib/libclangStaticAnalyzerCheckers.a
bin/clang-interpreter: lib/libclangStaticAnalyzerCore.a
bin/clang-interpreter: lib/libclangAnalysis.a
bin/clang-interpreter: lib/libclangRewriteCore.a
bin/clang-interpreter: lib/libclangRewriteFrontend.a
bin/clang-interpreter: lib/libclangAST.a
bin/clang-interpreter: lib/libclangParse.a
bin/clang-interpreter: lib/libclangLex.a
bin/clang-interpreter: lib/libclangBasic.a
bin/clang-interpreter: lib/libLLVMBitWriter.a
bin/clang-interpreter: lib/libLLVMIRReader.a
bin/clang-interpreter: lib/libLLVMipo.a
bin/clang-interpreter: lib/libLLVMLinker.a
bin/clang-interpreter: lib/libLLVMVectorize.a
bin/clang-interpreter: lib/libLLVMInstrumentation.a
bin/clang-interpreter: lib/libclangFrontend.a
bin/clang-interpreter: lib/libclangSerialization.a
bin/clang-interpreter: lib/libLLVMBitReader.a
bin/clang-interpreter: lib/libclangDriver.a
bin/clang-interpreter: lib/libLLVMOption.a
bin/clang-interpreter: lib/libclangRewriteCore.a
bin/clang-interpreter: lib/libclangParse.a
bin/clang-interpreter: lib/libclangSema.a
bin/clang-interpreter: lib/libLLVMX86CodeGen.a
bin/clang-interpreter: lib/libLLVMAsmParser.a
bin/clang-interpreter: lib/libclangAnalysis.a
bin/clang-interpreter: lib/libclangEdit.a
bin/clang-interpreter: lib/libLLVMAArch64AsmParser.a
bin/clang-interpreter: lib/libLLVMAArch64Disassembler.a
bin/clang-interpreter: lib/libLLVMARMCodeGen.a
bin/clang-interpreter: lib/libLLVMARMAsmParser.a
bin/clang-interpreter: lib/libLLVMARMDisassembler.a
bin/clang-interpreter: lib/libLLVMCppBackendCodeGen.a
bin/clang-interpreter: lib/libLLVMHexagonCodeGen.a
bin/clang-interpreter: lib/libLLVMMipsCodeGen.a
bin/clang-interpreter: lib/libLLVMMipsAsmParser.a
bin/clang-interpreter: lib/libLLVMMipsDisassembler.a
bin/clang-interpreter: lib/libLLVMMSP430CodeGen.a
bin/clang-interpreter: lib/libLLVMNVPTXCodeGen.a
bin/clang-interpreter: lib/libLLVMPowerPCCodeGen.a
bin/clang-interpreter: lib/libLLVMPowerPCAsmParser.a
bin/clang-interpreter: lib/libLLVMR600CodeGen.a
bin/clang-interpreter: lib/libLLVMSparcCodeGen.a
bin/clang-interpreter: lib/libLLVMSystemZCodeGen.a
bin/clang-interpreter: lib/libLLVMSystemZAsmParser.a
bin/clang-interpreter: lib/libLLVMSystemZDisassembler.a
bin/clang-interpreter: lib/libLLVMX86AsmParser.a
bin/clang-interpreter: lib/libLLVMX86Disassembler.a
bin/clang-interpreter: lib/libLLVMX86Desc.a
bin/clang-interpreter: lib/libLLVMX86AsmPrinter.a
bin/clang-interpreter: lib/libLLVMX86Utils.a
bin/clang-interpreter: lib/libLLVMX86Info.a
bin/clang-interpreter: lib/libLLVMXCoreCodeGen.a
bin/clang-interpreter: lib/libLLVMXCoreDisassembler.a
bin/clang-interpreter: lib/libLLVMAArch64CodeGen.a
bin/clang-interpreter: lib/libLLVMAsmPrinter.a
bin/clang-interpreter: lib/libLLVMMCParser.a
bin/clang-interpreter: lib/libLLVMSelectionDAG.a
bin/clang-interpreter: lib/libLLVMCodeGen.a
bin/clang-interpreter: lib/libLLVMObjCARCOpts.a
bin/clang-interpreter: lib/libLLVMScalarOpts.a
bin/clang-interpreter: lib/libLLVMInstCombine.a
bin/clang-interpreter: lib/libLLVMTransformUtils.a
bin/clang-interpreter: lib/libLLVMipa.a
bin/clang-interpreter: lib/libLLVMAnalysis.a
bin/clang-interpreter: lib/libLLVMARMDesc.a
bin/clang-interpreter: lib/libLLVMCppBackendInfo.a
bin/clang-interpreter: lib/libLLVMHexagonAsmPrinter.a
bin/clang-interpreter: lib/libLLVMMipsDesc.a
bin/clang-interpreter: lib/libLLVMMSP430Desc.a
bin/clang-interpreter: lib/libLLVMNVPTXDesc.a
bin/clang-interpreter: lib/libLLVMPowerPCDesc.a
bin/clang-interpreter: lib/libLLVMR600Desc.a
bin/clang-interpreter: lib/libLLVMSparcDesc.a
bin/clang-interpreter: lib/libLLVMSystemZDesc.a
bin/clang-interpreter: lib/libLLVMXCoreDesc.a
bin/clang-interpreter: lib/libLLVMAArch64Desc.a
bin/clang-interpreter: lib/libLLVMARMAsmPrinter.a
bin/clang-interpreter: lib/libLLVMARMInfo.a
bin/clang-interpreter: lib/libLLVMHexagonDesc.a
bin/clang-interpreter: lib/libLLVMMipsAsmPrinter.a
bin/clang-interpreter: lib/libLLVMMipsInfo.a
bin/clang-interpreter: lib/libLLVMMSP430AsmPrinter.a
bin/clang-interpreter: lib/libLLVMMSP430Info.a
bin/clang-interpreter: lib/libLLVMNVPTXAsmPrinter.a
bin/clang-interpreter: lib/libLLVMNVPTXInfo.a
bin/clang-interpreter: lib/libLLVMPowerPCAsmPrinter.a
bin/clang-interpreter: lib/libLLVMPowerPCInfo.a
bin/clang-interpreter: lib/libLLVMR600AsmPrinter.a
bin/clang-interpreter: lib/libLLVMR600Info.a
bin/clang-interpreter: lib/libLLVMSparcInfo.a
bin/clang-interpreter: lib/libLLVMSystemZAsmPrinter.a
bin/clang-interpreter: lib/libLLVMSystemZInfo.a
bin/clang-interpreter: lib/libLLVMXCoreAsmPrinter.a
bin/clang-interpreter: lib/libLLVMXCoreInfo.a
bin/clang-interpreter: lib/libLLVMAArch64AsmPrinter.a
bin/clang-interpreter: lib/libLLVMAArch64Info.a
bin/clang-interpreter: lib/libLLVMTarget.a
bin/clang-interpreter: lib/libLLVMHexagonInfo.a
bin/clang-interpreter: lib/libLLVMAArch64Utils.a
bin/clang-interpreter: lib/libLLVMCore.a
bin/clang-interpreter: lib/libclangAST.a
bin/clang-interpreter: lib/libclangLex.a
bin/clang-interpreter: lib/libclangBasic.a
bin/clang-interpreter: lib/libLLVMMC.a
bin/clang-interpreter: lib/libLLVMObject.a
bin/clang-interpreter: lib/libLLVMSupport.a
bin/clang-interpreter: tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/clang-interpreter"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/clang-interpreter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clang-interpreter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/build: bin/clang-interpreter

.PHONY : tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/build

tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/clang-interpreter && $(CMAKE_COMMAND) -P CMakeFiles/clang-interpreter.dir/cmake_clean.cmake
.PHONY : tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/clean

tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/clang/examples/clang-interpreter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/clang-interpreter /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/examples/clang-interpreter/CMakeFiles/clang-interpreter.dir/depend

