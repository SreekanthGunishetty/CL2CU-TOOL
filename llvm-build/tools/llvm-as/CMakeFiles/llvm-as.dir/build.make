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
include tools/llvm-as/CMakeFiles/llvm-as.dir/depend.make

# Include the progress variables for this target.
include tools/llvm-as/CMakeFiles/llvm-as.dir/progress.make

# Include the compile flags for this target's objects.
include tools/llvm-as/CMakeFiles/llvm-as.dir/flags.make

tools/llvm-as/CMakeFiles/llvm-as.dir/llvm-as.cpp.o: tools/llvm-as/CMakeFiles/llvm-as.dir/flags.make
tools/llvm-as/CMakeFiles/llvm-as.dir/llvm-as.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-as/llvm-as.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/llvm-as/CMakeFiles/llvm-as.dir/llvm-as.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/llvm-as.dir/llvm-as.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-as/llvm-as.cpp

tools/llvm-as/CMakeFiles/llvm-as.dir/llvm-as.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/llvm-as.dir/llvm-as.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-as/llvm-as.cpp > CMakeFiles/llvm-as.dir/llvm-as.cpp.i

tools/llvm-as/CMakeFiles/llvm-as.dir/llvm-as.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/llvm-as.dir/llvm-as.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-as/llvm-as.cpp -o CMakeFiles/llvm-as.dir/llvm-as.cpp.s

# Object files for target llvm-as
llvm__as_OBJECTS = \
"CMakeFiles/llvm-as.dir/llvm-as.cpp.o"

# External object files for target llvm-as
llvm__as_EXTERNAL_OBJECTS =

bin/llvm-as: tools/llvm-as/CMakeFiles/llvm-as.dir/llvm-as.cpp.o
bin/llvm-as: tools/llvm-as/CMakeFiles/llvm-as.dir/build.make
bin/llvm-as: lib/libLLVMAsmParser.a
bin/llvm-as: lib/libLLVMBitWriter.a
bin/llvm-as: lib/libLLVMCore.a
bin/llvm-as: lib/libLLVMSupport.a
bin/llvm-as: tools/llvm-as/CMakeFiles/llvm-as.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/llvm-as"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/llvm-as.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/llvm-as/CMakeFiles/llvm-as.dir/build: bin/llvm-as

.PHONY : tools/llvm-as/CMakeFiles/llvm-as.dir/build

tools/llvm-as/CMakeFiles/llvm-as.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as && $(CMAKE_COMMAND) -P CMakeFiles/llvm-as.dir/cmake_clean.cmake
.PHONY : tools/llvm-as/CMakeFiles/llvm-as.dir/clean

tools/llvm-as/CMakeFiles/llvm-as.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/llvm-as /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/llvm-as/CMakeFiles/llvm-as.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/llvm-as/CMakeFiles/llvm-as.dir/depend

