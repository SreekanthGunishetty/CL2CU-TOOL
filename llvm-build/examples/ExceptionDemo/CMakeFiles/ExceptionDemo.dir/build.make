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
include examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/depend.make

# Include the progress variables for this target.
include examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/progress.make

# Include the compile flags for this target's objects.
include examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/flags.make

examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.o: examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/flags.make
examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/examples/ExceptionDemo/ExceptionDemo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/examples/ExceptionDemo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/examples/ExceptionDemo/ExceptionDemo.cpp

examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/examples/ExceptionDemo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/examples/ExceptionDemo/ExceptionDemo.cpp > CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.i

examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/examples/ExceptionDemo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/examples/ExceptionDemo/ExceptionDemo.cpp -o CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.s

# Object files for target ExceptionDemo
ExceptionDemo_OBJECTS = \
"CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.o"

# External object files for target ExceptionDemo
ExceptionDemo_EXTERNAL_OBJECTS =

bin/ExceptionDemo: examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/ExceptionDemo.cpp.o
bin/ExceptionDemo: examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/build.make
bin/ExceptionDemo: lib/libLLVMMCJIT.a
bin/ExceptionDemo: lib/libLLVMX86CodeGen.a
bin/ExceptionDemo: lib/libLLVMJIT.a
bin/ExceptionDemo: lib/libLLVMAsmPrinter.a
bin/ExceptionDemo: lib/libLLVMSelectionDAG.a
bin/ExceptionDemo: lib/libLLVMX86Desc.a
bin/ExceptionDemo: lib/libLLVMExecutionEngine.a
bin/ExceptionDemo: lib/libLLVMRuntimeDyld.a
bin/ExceptionDemo: lib/libLLVMMCParser.a
bin/ExceptionDemo: lib/libLLVMCodeGen.a
bin/ExceptionDemo: lib/libLLVMX86AsmPrinter.a
bin/ExceptionDemo: lib/libLLVMX86Info.a
bin/ExceptionDemo: lib/libLLVMObjCARCOpts.a
bin/ExceptionDemo: lib/libLLVMScalarOpts.a
bin/ExceptionDemo: lib/libLLVMX86Utils.a
bin/ExceptionDemo: lib/libLLVMInstCombine.a
bin/ExceptionDemo: lib/libLLVMTransformUtils.a
bin/ExceptionDemo: lib/libLLVMipa.a
bin/ExceptionDemo: lib/libLLVMAnalysis.a
bin/ExceptionDemo: lib/libLLVMTarget.a
bin/ExceptionDemo: lib/libLLVMCore.a
bin/ExceptionDemo: lib/libLLVMMC.a
bin/ExceptionDemo: lib/libLLVMObject.a
bin/ExceptionDemo: lib/libLLVMSupport.a
bin/ExceptionDemo: examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/ExceptionDemo"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/examples/ExceptionDemo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ExceptionDemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/build: bin/ExceptionDemo

.PHONY : examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/build

examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/examples/ExceptionDemo && $(CMAKE_COMMAND) -P CMakeFiles/ExceptionDemo.dir/cmake_clean.cmake
.PHONY : examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/clean

examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/examples/ExceptionDemo /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/examples/ExceptionDemo /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/ExceptionDemo/CMakeFiles/ExceptionDemo.dir/depend

