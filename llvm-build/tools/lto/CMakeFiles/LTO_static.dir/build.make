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
include tools/lto/CMakeFiles/LTO_static.dir/depend.make

# Include the progress variables for this target.
include tools/lto/CMakeFiles/LTO_static.dir/progress.make

# Include the compile flags for this target's objects.
include tools/lto/CMakeFiles/LTO_static.dir/flags.make

tools/lto/CMakeFiles/LTO_static.dir/LTODisassembler.cpp.o: tools/lto/CMakeFiles/LTO_static.dir/flags.make
tools/lto/CMakeFiles/LTO_static.dir/LTODisassembler.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/LTODisassembler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/lto/CMakeFiles/LTO_static.dir/LTODisassembler.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LTO_static.dir/LTODisassembler.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/LTODisassembler.cpp

tools/lto/CMakeFiles/LTO_static.dir/LTODisassembler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LTO_static.dir/LTODisassembler.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/LTODisassembler.cpp > CMakeFiles/LTO_static.dir/LTODisassembler.cpp.i

tools/lto/CMakeFiles/LTO_static.dir/LTODisassembler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LTO_static.dir/LTODisassembler.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/LTODisassembler.cpp -o CMakeFiles/LTO_static.dir/LTODisassembler.cpp.s

tools/lto/CMakeFiles/LTO_static.dir/lto.cpp.o: tools/lto/CMakeFiles/LTO_static.dir/flags.make
tools/lto/CMakeFiles/LTO_static.dir/lto.cpp.o: /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/lto.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/lto/CMakeFiles/LTO_static.dir/lto.cpp.o"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LTO_static.dir/lto.cpp.o -c /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/lto.cpp

tools/lto/CMakeFiles/LTO_static.dir/lto.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LTO_static.dir/lto.cpp.i"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/lto.cpp > CMakeFiles/LTO_static.dir/lto.cpp.i

tools/lto/CMakeFiles/LTO_static.dir/lto.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LTO_static.dir/lto.cpp.s"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto/lto.cpp -o CMakeFiles/LTO_static.dir/lto.cpp.s

# Object files for target LTO_static
LTO_static_OBJECTS = \
"CMakeFiles/LTO_static.dir/LTODisassembler.cpp.o" \
"CMakeFiles/LTO_static.dir/lto.cpp.o"

# External object files for target LTO_static
LTO_static_EXTERNAL_OBJECTS =

lib/libLTO.a: tools/lto/CMakeFiles/LTO_static.dir/LTODisassembler.cpp.o
lib/libLTO.a: tools/lto/CMakeFiles/LTO_static.dir/lto.cpp.o
lib/libLTO.a: tools/lto/CMakeFiles/LTO_static.dir/build.make
lib/libLTO.a: tools/lto/CMakeFiles/LTO_static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anonix/new_tool/CL2CU/CU2CL/llvm-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../../lib/libLTO.a"
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && $(CMAKE_COMMAND) -P CMakeFiles/LTO_static.dir/cmake_clean_target.cmake
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LTO_static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/lto/CMakeFiles/LTO_static.dir/build: lib/libLTO.a

.PHONY : tools/lto/CMakeFiles/LTO_static.dir/build

tools/lto/CMakeFiles/LTO_static.dir/clean:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto && $(CMAKE_COMMAND) -P CMakeFiles/LTO_static.dir/cmake_clean.cmake
.PHONY : tools/lto/CMakeFiles/LTO_static.dir/clean

tools/lto/CMakeFiles/LTO_static.dir/depend:
	cd /home/anonix/new_tool/CL2CU/CU2CL/llvm-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4 /home/anonix/new_tool/CL2CU/CU2CL/llvm-3.4/tools/lto /home/anonix/new_tool/CL2CU/CU2CL/llvm-build /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto /home/anonix/new_tool/CL2CU/CU2CL/llvm-build/tools/lto/CMakeFiles/LTO_static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/lto/CMakeFiles/LTO_static.dir/depend

