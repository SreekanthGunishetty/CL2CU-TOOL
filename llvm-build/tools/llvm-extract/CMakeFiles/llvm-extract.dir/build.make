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
include tools/llvm-extract/CMakeFiles/llvm-extract.dir/depend.make

# Include the progress variables for this target.
include tools/llvm-extract/CMakeFiles/llvm-extract.dir/progress.make

# Include the compile flags for this target's objects.
include tools/llvm-extract/CMakeFiles/llvm-extract.dir/flags.make

tools/llvm-extract/CMakeFiles/llvm-extract.dir/llvm-extract.cpp.o: tools/llvm-extract/CMakeFiles/llvm-extract.dir/flags.make
tools/llvm-extract/CMakeFiles/llvm-extract.dir/llvm-extract.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-extract/llvm-extract.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/llvm-extract/CMakeFiles/llvm-extract.dir/llvm-extract.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/llvm-extract.dir/llvm-extract.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-extract/llvm-extract.cpp

tools/llvm-extract/CMakeFiles/llvm-extract.dir/llvm-extract.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-extract.dir/llvm-extract.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-extract/llvm-extract.cpp > CMakeFiles/llvm-extract.dir/llvm-extract.cpp.i

tools/llvm-extract/CMakeFiles/llvm-extract.dir/llvm-extract.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-extract.dir/llvm-extract.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-extract/llvm-extract.cpp -o CMakeFiles/llvm-extract.dir/llvm-extract.cpp.s

# Object files for target llvm-extract
llvm__extract_OBJECTS = \
"CMakeFiles/llvm-extract.dir/llvm-extract.cpp.o"

# External object files for target llvm-extract
llvm__extract_EXTERNAL_OBJECTS =

bin/llvm-extract: tools/llvm-extract/CMakeFiles/llvm-extract.dir/llvm-extract.cpp.o
bin/llvm-extract: tools/llvm-extract/CMakeFiles/llvm-extract.dir/build.make
bin/llvm-extract: lib/libLLVMipo.a
bin/llvm-extract: lib/libLLVMBitWriter.a
bin/llvm-extract: lib/libLLVMIRReader.a
bin/llvm-extract: lib/libLLVMObjCARCOpts.a
bin/llvm-extract: lib/libLLVMScalarOpts.a
bin/llvm-extract: lib/libLLVMVectorize.a
bin/llvm-extract: lib/libLLVMAsmParser.a
bin/llvm-extract: lib/libLLVMBitReader.a
bin/llvm-extract: lib/libLLVMInstCombine.a
bin/llvm-extract: lib/libLLVMTransformUtils.a
bin/llvm-extract: lib/libLLVMipa.a
bin/llvm-extract: lib/libLLVMAnalysis.a
bin/llvm-extract: lib/libLLVMTarget.a
bin/llvm-extract: lib/libLLVMCore.a
bin/llvm-extract: lib/libLLVMMC.a
bin/llvm-extract: lib/libLLVMObject.a
bin/llvm-extract: lib/libLLVMSupport.a
bin/llvm-extract: tools/llvm-extract/CMakeFiles/llvm-extract.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llvm-extract"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llvm-extract.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/llvm-extract/CMakeFiles/llvm-extract.dir/build: bin/llvm-extract

.PHONY : tools/llvm-extract/CMakeFiles/llvm-extract.dir/build

tools/llvm-extract/CMakeFiles/llvm-extract.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract && $(CMAKE_COMMAND) -P CMakeFiles/llvm-extract.dir/cmake_clean.cmake
.PHONY : tools/llvm-extract/CMakeFiles/llvm-extract.dir/clean

tools/llvm-extract/CMakeFiles/llvm-extract.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-extract /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-extract/CMakeFiles/llvm-extract.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/llvm-extract/CMakeFiles/llvm-extract.dir/depend

