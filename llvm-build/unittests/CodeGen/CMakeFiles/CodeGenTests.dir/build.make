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
include unittests/CodeGen/CMakeFiles/CodeGenTests.dir/depend.make

# Include the progress variables for this target.
include unittests/CodeGen/CMakeFiles/CodeGenTests.dir/progress.make

# Include the compile flags for this target's objects.
include unittests/CodeGen/CMakeFiles/CodeGenTests.dir/flags.make

unittests/CodeGen/CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.o: unittests/CodeGen/CMakeFiles/CodeGenTests.dir/flags.make
unittests/CodeGen/CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/unittests/CodeGen/DIEHashTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unittests/CodeGen/CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/unittests/CodeGen && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/unittests/CodeGen/DIEHashTest.cpp

unittests/CodeGen/CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/unittests/CodeGen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/unittests/CodeGen/DIEHashTest.cpp > CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.i

unittests/CodeGen/CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/unittests/CodeGen && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/unittests/CodeGen/DIEHashTest.cpp -o CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.s

# Object files for target CodeGenTests
CodeGenTests_OBJECTS = \
"CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.o"

# External object files for target CodeGenTests
CodeGenTests_EXTERNAL_OBJECTS =

unittests/CodeGen/CodeGenTests: unittests/CodeGen/CMakeFiles/CodeGenTests.dir/DIEHashTest.cpp.o
unittests/CodeGen/CodeGenTests: unittests/CodeGen/CMakeFiles/CodeGenTests.dir/build.make
unittests/CodeGen/CodeGenTests: lib/libLLVMAsmPrinter.a
unittests/CodeGen/CodeGenTests: lib/libLLVMCodeGen.a
unittests/CodeGen/CodeGenTests: lib/libLLVMMCParser.a
unittests/CodeGen/CodeGenTests: lib/libLLVMObjCARCOpts.a
unittests/CodeGen/CodeGenTests: lib/libLLVMScalarOpts.a
unittests/CodeGen/CodeGenTests: lib/libLLVMInstCombine.a
unittests/CodeGen/CodeGenTests: lib/libLLVMTransformUtils.a
unittests/CodeGen/CodeGenTests: lib/libLLVMipa.a
unittests/CodeGen/CodeGenTests: lib/libLLVMAnalysis.a
unittests/CodeGen/CodeGenTests: lib/libLLVMTarget.a
unittests/CodeGen/CodeGenTests: lib/libLLVMCore.a
unittests/CodeGen/CodeGenTests: lib/libLLVMMC.a
unittests/CodeGen/CodeGenTests: lib/libLLVMObject.a
unittests/CodeGen/CodeGenTests: lib/libLLVMSupport.a
unittests/CodeGen/CodeGenTests: lib/libgtest.a
unittests/CodeGen/CodeGenTests: lib/libgtest_main.a
unittests/CodeGen/CodeGenTests: lib/libLLVMSupport.a
unittests/CodeGen/CodeGenTests: lib/libgtest.a
unittests/CodeGen/CodeGenTests: lib/libLLVMSupport.a
unittests/CodeGen/CodeGenTests: unittests/CodeGen/CMakeFiles/CodeGenTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable CodeGenTests"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/unittests/CodeGen && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CodeGenTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittests/CodeGen/CMakeFiles/CodeGenTests.dir/build: unittests/CodeGen/CodeGenTests

.PHONY : unittests/CodeGen/CMakeFiles/CodeGenTests.dir/build

unittests/CodeGen/CMakeFiles/CodeGenTests.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/unittests/CodeGen && $(CMAKE_COMMAND) -P CMakeFiles/CodeGenTests.dir/cmake_clean.cmake
.PHONY : unittests/CodeGen/CMakeFiles/CodeGenTests.dir/clean

unittests/CodeGen/CMakeFiles/CodeGenTests.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/unittests/CodeGen /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/unittests/CodeGen /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/unittests/CodeGen/CMakeFiles/CodeGenTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittests/CodeGen/CMakeFiles/CodeGenTests.dir/depend

